## Publishing

```bash
# Set version
declare SWIFTFORMAT_VERSION="$(cat VERSION)"

# Build
docker build                                   \
--build-arg SWIFTFORMAT_VERSION=${SWIFTFORMAT_VERSION} \
--force-rm                                     \
--pull                                         \
--tag mayachit/swiftformat:${SWIFTFORMAT_VERSION}      \
.

# Test
docker run --rm mayachit/swiftformat:${SWIFTFORMAT_VERSION} swiftformat --version

# Push
docker login
docker tag mayachit/swiftformat:${SWIFTFORMAT_VERSION} mayachit/swiftformat:latest
docker push mayachit/swiftformat:${SWIFTFORMAT_VERSION}
docker push mayachit/swiftformat:latest

# Tag docker repo
git tag "v${SWIFTFORMAT_VERSION}"
```
