class Litestream < Formula
  desc "Streaming replication for SQLite databases"
  homepage "https://github.com/benbjohnson/litestream"
  version "0.3.1"
  license "GPL-3.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/benbjohnson/litestream/releases/download/v0.3.1/litestream-v0.3.1-darwin-amd64.zip"
    sha256 "eb2fe4b1c8bd9d6edf8923ca4dc9d4fe5daa52240ec6a09c2ee9738689efaa0b"
  end

  def install
    bin.install "litestream"
  end

  test do
    system "#{bin}/litestream version"
  end
end