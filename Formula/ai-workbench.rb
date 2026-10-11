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
      url "https://github.com/eqms/ai-workbench/releases/download/v1.14.2/ai-workbench-aarch64-apple-darwin.tar.gz"
      sha256 "87ad681e340a0967e8e706a96e15cd361c5e779f46897b1f8944c6f25b771946"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.14.2/ai-workbench-x86_64-apple-darwin.tar.gz"
      sha256 "06cc4801684ca5c5c285703447ed1018126356058140e68799f2da4567d004ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eqms/ai-workbench/releases/download/v1.14.2/ai-workbench-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9a9a72c7b5ec851e36208bae508dce6ae4b64bc811a27d760ff6b05d811ceb9f"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.14.2/ai-workbench-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "01bc685522039c4b41968da972a6949ce39ac6e07a98c71444d3b217a0840021"
    end
  end

  def install
    bin.install "ai-workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-workbench --version")
  end
end
