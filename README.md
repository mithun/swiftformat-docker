# swiftformat-docker

Unofficial Docker image for [SwiftFormat](https://github.com/nicklockwood/SwiftFormat)

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
