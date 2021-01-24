class Litestream < Formula
  desc "Streaming replication for SQLite databases"
  homepage "https://github.com/benbjohnson/litestream"
  version "0.3.0"
  license "GPL-3.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/benbjohnson/litestream/releases/download/v0.3.0/litestream-v0.3.0-darwin-amd64.zip"
    sha256 "ca35249db3f0c146027627cae58ce0265e0f7e1ed4209de444b18a28b5266d2f"
  end

  def install
    bin.install "litestream"
  end

  test do
    system "#{bin}/litestream version"
  end
end