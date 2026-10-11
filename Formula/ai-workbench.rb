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
      url "https://github.com/eqms/ai-workbench/releases/download/v1.14.1/ai-workbench-aarch64-apple-darwin.tar.gz"
      sha256 "dc4666f8a3e60bf1e12dd8ff67bcc5b4fcc32ae8dcdc3e38643cf3c0d0742ecc"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.14.1/ai-workbench-x86_64-apple-darwin.tar.gz"
      sha256 "db2942d7578c0a2aa3e03c09e767f7c1ae15b99e78b188d1a80a689c74001e09"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eqms/ai-workbench/releases/download/v1.14.1/ai-workbench-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "357260a9cba536b71a0f9da93e3d26837060aa065c03d3bfc9c5c9f5bc8109a9"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.14.1/ai-workbench-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "217e2870cb172a1aa5a68552a89df359f42bc78d97ad63a423245a2e3d67e08f"
    end
  end

  def install
    bin.install "ai-workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-workbench --version")
  end
end
