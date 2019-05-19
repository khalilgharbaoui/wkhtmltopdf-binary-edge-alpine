# wkhtmltopdf-binary-edge-alpine

### Supported OS
* Alpine Linux 3.9+       64-bit
* Linux (Ubuntu Trusty+)	64-bit
* OS X 10.7+              64-bit
###

### Don't need *Alpine Linux* support? please use [this gem](https://github.com/pallymore/wkhtmltopdf-binary-edge) instead!
### If you are using wkhtmltopdf on heroku, please use [this gem](https://github.com/rposborne/wkhtmltopdf-heroku) instead!

## Installation
In your `Gemfile`:
```ruby
gem 'wkhtmltopdf-binary-edge-alpine', '~> 0.12.5.0', github: 'khalilgharbaoui/wkhtmltopdf-binary-edge-alpine'
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
  ttf-liberation \
  ttf-ubuntu-font-family
&& apk add --update --no-cache --virtual .build-deps \
  msttcorefonts-installer \
\
# Install microsoft fonts
&& update-ms-fonts \
&& fc-cache -f \
\
# Clean up when done
&& rm -rf /tmp/* \
&& apk del .build-deps
```

## Contribute

Please feel free to open a issue or pull request with suggestions.

## Credits

Based upon the following repos:
- https://github.com/pallymore/wkhtmltopdf-binary-edge
- https://github.com/Surnet/docker-wkhtmltopdf
