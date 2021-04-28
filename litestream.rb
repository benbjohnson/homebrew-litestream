class Litestream < Formula
  desc "Streaming replication for SQLite databases"
  homepage "https://github.com/benbjohnson/litestream"
  version "0.3.4"
  license "Apache-2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/benbjohnson/litestream/releases/download/v0.3.4/litestream-v0.3.4-darwin-amd64.zip"
    sha256 "891e1c14163d001a41bb55901f7b13e76d7f37293881fafe5a7c8a345cb78ddc"
  end

  def install
    bin.install "litestream"
  end

  test do
    system "#{bin}/litestream version"
  end
end