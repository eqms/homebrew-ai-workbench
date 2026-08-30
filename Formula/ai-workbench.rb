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
      url "https://github.com/eqms/ai-workbench/releases/download/v1.13.0/ai-workbench-aarch64-apple-darwin.tar.gz"
      sha256 "f4922e17812629106c02d7c1adf4de20e9de00c1ae26136f807c119310f7fa42"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.13.0/ai-workbench-x86_64-apple-darwin.tar.gz"
      sha256 "d489c374a8217c37eb0f4cb3150fa25631102c8e4a2e9808a83a4f1576e13512"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eqms/ai-workbench/releases/download/v1.13.0/ai-workbench-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e931429eaa9e4206007f95b6912f9c0da53e1063b23517f7aea2cc0f906ac74f"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.13.0/ai-workbench-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e3147aa35e734a36660b605c39a6d47a451703a49e1739873e9beea80bc8528c"
    end
  end

  def install
    bin.install "ai-workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-workbench --version")
  end
end
