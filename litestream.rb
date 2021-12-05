class Litestream < Formula
  desc "Streaming replication for SQLite"
  homepage "https://github.com/benbjohnson/litestream"
  version "0.3.7"
  license "Apache-2.0"

  if OS.mac?
    url "https://github.com/benbjohnson/litestream/releases/download/v0.3.7/litestream-v0.3.7-darwin-amd64.zip"
    sha256 "fdfd811df081949fdac2f09af8ad624c37c02b98c0e777f725f69e67be270745"
  end

  def install
    bin.install "litestream"
  end

  test do
    system "#{bin}/litestream version"
  end
end