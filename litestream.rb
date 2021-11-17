class Litestream < Formula
  desc "Streaming replication for SQLite"
  homepage "https://github.com/benbjohnson/litestream"
  version "0.3.6"
  license "Apache-2.0"

  if OS.mac?
    url "https://github.com/benbjohnson/litestream/releases/download/v0.3.6/litestream-v0.3.6-darwin-amd64.zip"
    sha256 "cf44fc0f1379b1fe4693b5744a6caaaf7f2e07d91e02491c6bae89ddba3cd9a5"
  end

  def install
    bin.install "litestream"
  end

  test do
    system "#{bin}/litestream version"
  end
end