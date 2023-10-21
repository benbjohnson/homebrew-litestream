class Litestream < Formula
  desc "Streaming replication for SQLite"
  homepage "https://github.com/benbjohnson/litestream"
  version "0.3.12"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/benbjohnson/litestream/releases/download/v0.3.12/litestream-v0.3.12-darwin-amd64.zip"
    sha256 "ec886c4a9c01cb888a199dab37b9c9abef544358e63cd60028067a1297d8d349"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/benbjohnson/litestream/releases/download/v0.3.12/litestream-v0.3.12-darwin-arm64.zip"
    sha256 "1bdfd0aa7edca4acf8d66dffd869af2db087df5635d5d9a845ac5dfc4a548f6d"
  end

  def install
    bin.install "litestream"
  end

  test do
    system "#{bin}/litestream version"
  end
end