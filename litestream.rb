class Litestream < Formula
  desc "Streaming replication for SQLite databases"
  homepage "https://github.com/benbjohnson/litestream"
  version "0.3.3"
  license "GPL-3.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/benbjohnson/litestream/releases/download/v0.3.3/litestream-v0.3.3-darwin-amd64.zip"
    sha256 "01aff7812af58587da5eecbaae2c11f767d87d0fc49d8119a92bdff58a008f0e"
  end

  def install
    bin.install "litestream"
  end

  test do
    system "#{bin}/litestream version"
  end
end