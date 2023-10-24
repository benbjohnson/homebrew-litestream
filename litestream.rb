class Litestream < Formula
  desc "Streaming replication for SQLite"
  homepage "https://github.com/benbjohnson/litestream"
  version "0.3.12"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/benbjohnson/litestream/releases/download/v0.3.12/litestream-v0.3.12-darwin-amd64.zip"
    sha256 "6f68536bd24a0b6c4fdefb2f91ba27332e2146fb9f1be7985adfee8cdfce9784"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/benbjohnson/litestream/releases/download/v0.3.12/litestream-v0.3.12-darwin-arm64.zip"
    sha256 "6d1689487432613f5c10aee75ee77c95250dcce4da49695bf0a448c794eb7daa"
  end

  def install
    bin.install "litestream"
  end

  test do
    system "#{bin}/litestream version"
  end
end