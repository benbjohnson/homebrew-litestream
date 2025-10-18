class Litestream < Formula
  desc "Streaming replication for SQLite"
  homepage "https://github.com/benbjohnson/litestream"
  version "0.5.2"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/benbjohnson/litestream/releases/download/v0.5.2/litestream-0.5.2-darwin-x86_64.tar.gz"
    sha256 "aeba26e911d9b0da79dbfd9d18c6753fff25568ac8adbc33d69b6025bc7f731c"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/benbjohnson/litestream/releases/download/v0.5.2/litestream-0.5.2-darwin-arm64.tar.gz"
    sha256 "c14830c969af47aafdb1bff681d01eb6c583d9edec01dfe9d88d797cf211ed30"
  end

  def install
    bin.install "litestream"
  end

  test do
    system "#{bin}/litestream version"
  end
end