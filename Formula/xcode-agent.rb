class XcodeAgent < Formula
  desc "Agent-friendly CLI for iOS/macOS development"
  homepage "https://github.com/chandilsachin/xcode-agent"
  url "https://github.com/chandilsachin/xcode-agent/releases/download/v0.1.0/xcode-agent-0.1.0-arm64-apple-macosx.tar.gz"
  sha256 "3e8c3399f7e4ee82557068d183ff0a8e33271586f4fb6c81cbdcd84f583d14d4"
  version "0.1.0"
  license "MIT"

  def install
    bin.install "xcode"
  end

  test do
    assert_match "xcode-agent", shell_output("#{bin}/xcode --version")
  end
end
