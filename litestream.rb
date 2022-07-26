class Litestream < Formula
  desc "Streaming replication for SQLite"
  homepage "https://github.com/benbjohnson/litestream"
  version "0.3.9"
  license "Apache-2.0"

  if OS.mac?
    url "https://github.com/benbjohnson/litestream/releases/download/v0.3.9/litestream-v0.3.9-darwin-amd64.zip"
    sha256 "74599a34dc440c19544f533be2ef14cd4378ec1969b9b4fcfd24158946541869"
  end

  def install
    bin.install "litestream"
  end

  test do
    system "#{bin}/litestream version"
  end
end