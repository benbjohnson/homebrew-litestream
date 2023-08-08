class Litestream < Formula
  desc "Streaming replication for SQLite"
  homepage "https://github.com/benbjohnson/litestream"
  version "0.3.10"
  license "Apache-2.0"

  if OS.mac?
    url "https://github.com/benbjohnson/litestream/releases/download/v0.3.10/litestream-v0.3.10-darwin-amd64.zip"
    sha256 "998a35cce99107c61f54d46baaae1cad87db0e8e8110578b479f9e0aea32f526"
  end

  def install
    bin.install "litestream"
  end

  test do
    system "#{bin}/litestream version"
  end
end