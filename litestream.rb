class Litestream < Formula
  desc "Streaming replication for SQLite"
  homepage "https://github.com/benbjohnson/litestream"
  version "0.3.10"
  license "Apache-2.0"

  if OS.mac?
    url "https://github.com/benbjohnson/litestream/releases/download/v0.3.10/litestream-v0.3.10-darwin-amd64.zip"
    sha256 "6b04f76ab9919556db6c4e4ebe5a4e636eaf9e23dd8bb011cfd4483f0fd16469"
  end

  def install
    bin.install "litestream"
  end

  test do
    system "#{bin}/litestream version"
  end
end