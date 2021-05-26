require 'formula'

class VertX < Formula
  homepage 'http://vertx.io/'
  url 'https://wyre-prod-data.s3-us-west-2.amazonaws.com/vert.x-2.1.6.tar.gz'
  sha256 '06fd40240cfa0a3db5c00100e87b190b0dbb3593b112a9dd22373d7fcb5f241e'

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin client conf lib]
    doc.install %w[api-docs]
    bin.install_symlink "#{libexec}/bin/vertx"
  end
end
