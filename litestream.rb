class Litestream < Formula
  desc "Streaming replication for SQLite"
  homepage "https://github.com/benbjohnson/litestream"
  version "0.3.5"
  license "Apache-2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/benbjohnson/litestream/releases/download/v0.3.5/litestream-v0.3.5-darwin-amd64.zip"
    sha256 "697867870dac5a175f421e7c8729713106219f7d5fe6077ef3cdded375840cf9"
  end

  def install
    bin.install "litestream"
  end

  test do
    system "#{bin}/litestream version"
  end
end