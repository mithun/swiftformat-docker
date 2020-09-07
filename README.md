# swiftformat-docker

Unofficial Docker image for [SwiftFormat](https://github.com/nicklockwood/SwiftFormat)

## Available Tags

-   `0.46.2`, `latest` ([_Dockerfile_](https://github.com/mithun/swiftformat-docker/blob/v0.46.2/Dockerfile))
-   `0.40.10` ([_Dockerfile_](https://github.com/mithun/swiftformat-docker/blob/v0.40.10/Dockerfile))
-   `0.40.8` ([_Dockerfile_](https://github.com/mithun/swiftformat-docker/blob/v0.40.8/Dockerfile))

## Usage

```bash
# Pull this image
docker pull mayachit/swiftformat

# Run swiftformat
docker run                 \
  --rm                     \
  -v "$(pwd):/tmp/workdir" \
  mayachit/swiftformat     \
  swiftformat /tmp/workdir
```

* * *
