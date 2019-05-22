###############################################################################
# DOCKERFILE FOR swiftformat
###############################################################################

# -----------------------------------------------------------------------------
# BUILD STAGE
# -----------------------------------------------------------------------------

FROM swift:5.0.1 as builder

RUN apt-get update && apt-get install -y curl

ARG SWIFTFORMAT_VERSION
ENV SWIFTFORMAT_ARCHIVE="https://github.com/nicklockwood/SwiftFormat/archive/${SWIFTFORMAT_VERSION}.tar.gz"
RUN curl -LSs --fail -o /tmp/swiftformat.tgz -- "${SWIFTFORMAT_ARCHIVE}" \
    && cd /tmp                                                           \
    && tar -xzf swiftformat.tgz                                          \
    && mv "./SwiftFormat-${SWIFTFORMAT_VERSION}" ./swiftformat           \
    && cd /tmp/swiftformat                                               \
    && swift build -c release

# -----------------------------------------------------------------------------
# RUN STAGE
# -----------------------------------------------------------------------------

FROM swift:5.0.1
LABEL maintainer="Mithun Ayachit <m0t0rbr3th@gmail.com>"
LABEL Description="Unofficial Docker image for https://github.com/nicklockwood/SwiftFormat"

COPY --from=builder /tmp/swiftformat/.build/release/swiftformat /usr/local/bin/swiftformat

COPY Dockerfile /Dockerfile
COPY LICENSE /LICENSE
COPY VERSION /VERSION

RUN chmod +x /usr/local/bin/swiftformat

###############################################################################
