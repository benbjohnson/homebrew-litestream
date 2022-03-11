class Litestream < Formula
  desc "Streaming replication for SQLite"
  homepage "https://github.com/benbjohnson/litestream"
  version "0.3.8"
  license "Apache-2.0"

  if OS.mac?
    url "https://github.com/benbjohnson/litestream/releases/download/v0.3.8/litestream-v0.3.8-darwin-amd64.zip"
    sha256 "d359a4edd1cb98f59a1a7c787bbd0ed30c6cc3126b02deb05a0ca501ff94a46a"
  end

  def install
    bin.install "litestream"
  end

  test do
    system "#{bin}/litestream version"
  end
end