class Litestream < Formula
  desc "Streaming replication for SQLite"
  homepage "https://github.com/benbjohnson/litestream"
  version "0.3.11"
  license "Apache-2.0"

  if OS.mac?
    url "https://github.com/benbjohnson/litestream/releases/download/v0.3.11/litestream-v0.3.11-darwin-amd64.zip"
    sha256 "ab5a1656a69e4e6e5be59ccbde7df8c79fa8aecfe6c07ef66d8cecbfbd9082aa"
  end

  def install
    bin.install "litestream"
  end

  test do
    system "#{bin}/litestream version"
  end
end