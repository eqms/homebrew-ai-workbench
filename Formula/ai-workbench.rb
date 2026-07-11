# Homebrew formula for ai-workbench - Rust-based TUI multiplexer
# https://github.com/eqms/ai-workbench
#
# This file is maintained automatically by the update-homebrew-tap job in
# eqms/ai-workbench's release workflow. After each release it rewrites the four
# download URLs and sha256 checksums. Manual edits to those lines will be
# overwritten on the next release.

class AiWorkbench < Formula
  desc "Rust-based TUI multiplexer for AI-assisted development"
  homepage "https://github.com/eqms/ai-workbench"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eqms/ai-workbench/releases/download/v1.6.0/ai-workbench-aarch64-apple-darwin.tar.gz"
      sha256 "3ccb585d4e261e552f9664bb19fecaf4ad1f4bdca01561982ebd20fda5cc79f7"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.6.0/ai-workbench-x86_64-apple-darwin.tar.gz"
      sha256 "4354fc6f350fa229b3ffc76af502228cdb1ccdb38a04ed1de7cc193357ae4a89"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eqms/ai-workbench/releases/download/v1.6.0/ai-workbench-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6ca84323cef2e4d7d16019873bcd3e577b2291b78b693d51539b4fbec4ed7615"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.6.0/ai-workbench-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "866cc980cf51f059c400d156f7355f204aa58611c87ff78b72baf1ed6e6f0ea5"
    end
  end

  def install
    bin.install "ai-workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-workbench --version")
  end
end
