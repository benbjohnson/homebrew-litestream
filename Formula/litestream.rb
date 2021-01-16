class Litestream < Formula
  desc "Streaming replication for SQLite databases"
  homepage "https://github.com/benbjohnson/litestream"
  version "0.2.0"
  license "GPLv3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/litestream/litestream/releases/download/v0.2.0/litestream-v0.2.0-darwin-amd64.tar.gz"
    sha256 ""
  end

  def install
    bin.install "litestream"
  end

  test do
    system "#{bin}/litestream version"
  end
end