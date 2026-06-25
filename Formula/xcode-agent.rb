class XcodeAgent < Formula
  desc "Agent-friendly CLI for iOS/macOS development"
  homepage "https://github.com/chandilsachin/xcode-agent"
  url "https://github.com/chandilsachin/xcode-agent/releases/download/v0.1.0/xcode-agent-0.1.0-arm64-apple-macosx.tar.gz"
  sha256 "3f373b305d0eb44f2891297d820c0d27e9ed9d1904a57fab0bf7af63c71369be"
  version "0.1.0"
  license "MIT"

  def install
    bin.install "xcode-agent"
  end

  test do
    assert_match "xcode-agent", shell_output("#{bin}/xcode-agent --version")
  end
end
