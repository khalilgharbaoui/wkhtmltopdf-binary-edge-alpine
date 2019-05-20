Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = 'wkhtmltopdf-binary-edge-alpine'
  s.version = IO.binread('./VERSION')
  s.summary = 'Provides binaries for WKHTMLTOPDF project in an easily accessible package. - forked from wkhtmltopdf-binary'
  s.description = 'Includes wkthmltopdf binaires for Alpine Linux, macOS (>= 10.7) and Ubuntu 16 (64bit)'

  s.required_ruby_version = '>= 1.8.7'
  s.required_rubygems_version = ">= 1.3.6"

  s.authors = ['Orginial Author: - Research Information Systems, The University of Iowa', 'Yurui Zhang', 'Khalil Gharbaoui']
  s.homepage = 'https://github.com/khalil/wkhtmltopdf-binary-edge-alpine'
  s.email = 'kaygeee@gmail.com'

  s.bindir = 'bin'
  s.executables = %w(wkhtmltopdf)

  s.files = %w(
    lib/wkhtmltopdf-binary-edge-alpine.rb
    bin/wkhtmltopdf
    libexec/wkhtmltopdf-alpine-linux-amd64
    libexec/wkhtmltopdf-darwin-x86_64
    libexec/wkhtmltopdf-linux-amd64)

  s.licenses = ['MIT']
end
