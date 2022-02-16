# wkhtmltopdf-binary-edge-alpine

### Don't need _Alpine Linux_ support? please use [this gem](https://github.com/pallymore/wkhtmltopdf-binary-edge) instead!

### If you are using wkhtmltopdf on heroku, please use [this gem](https://github.com/rposborne/wkhtmltopdf-heroku) instead!

### Supported OS

- Alpine Linux 3.15+ 64-bit
- Linux (Ubuntu Trusty+) 64-bit
- OS X 10.7+ 64-bit

## Installation

In your `Gemfile`:

```ruby
gem 'wkhtmltopdf-binary-edge-alpine', '~> 0.12.6.3', github: 'khalilgharbaoui/wkhtmltopdf-binary-edge-alpine'
```

### Docker dependencies for Alpine Linux

Add this layer in your `Dockerfile`:

```bash
# Install dependencies for wkhtmltopdf
RUN apk add --update --no-cache --wait 10 \
  libstdc++ \
  libx11 \
  libxrender \
  libxext \
  libssl1.1 \
  ca-certificates \
  fontconfig \
  freetype \
  ttf-dejavu \
  ttf-droid \
  ttf-freefont \
  ttf-liberation && \
  apk add --update --no-cache --virtual .build-deps \
  msttcorefonts-installer && \

# Install microsoft fonts
  update-ms-fonts && fc-cache -f && \

# Clean up when done
  rm -rf /tmp/* && apk del .build-deps
```

### Current wkhtmltopdf version:

#### 0.12.6 For Ubuntu & Mac OS

#### 0.12.6 with qt patches For Alpine Linux

Extracted from `surnet/alpine-wkhtmltopdf:3.15.0-0.12.6-small` docker image:

```bash
docker run --rm --entrypoint cat \
surnet/alpine-wkhtmltopdf:3.15.0-0.12.6-small \
/bin/wkhtmltopdf > ./libexec/wkhtmltopdf-alpine-linux-amd64
```

See: [wkhtmltopdf release notes](https://github.com/wkhtmltopdf/wkhtmltopdf/releases/tag/0.12.6)

### Known Issues:

Image is shrunk due to a zoom bug in the wkhtmltopdf binary version 0.12.5.0 when on Alpine Linux.

Workaround is to set the `zoom:` to exacly `1.3`.

See: https://github.com/wkhtmltopdf/wkhtmltopdf/issues/4036

And also see: https://github.com/wkhtmltopdf/wkhtmltopdf/issues/4036#issuecomment-493812493

## Contribute

Please feel free to open a issue or pull request with suggestions.

## Credits

Based upon the following repos:

- https://github.com/pallymore/wkhtmltopdf-binary-edge
- https://github.com/Surnet/docker-wkhtmltopdf
- https://github.com/aantonw/docker-alpine-wkhtmltopdf-patched-qt
