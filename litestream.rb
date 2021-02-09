class Litestream < Formula
  desc "Streaming replication for SQLite databases"
  homepage "https://github.com/benbjohnson/litestream"
  version "0.3.2"
  license "GPL-3.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/benbjohnson/litestream/releases/download/v0.3.2/litestream-v0.3.2-darwin-amd64.zip"
    sha256 "908214a053dbb15e35b84f1297cde095cc40e99e6bc47f35f581f00a119536b9"
  end

  def install
    bin.install "litestream"
  end

  test do
    system "#{bin}/litestream version"
  end
end