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
      url "https://github.com/eqms/ai-workbench/releases/download/v1.5.0/ai-workbench-aarch64-apple-darwin.tar.gz"
      sha256 "f4db9a9edd6159dfca546b0227379cfb5307708fc6d712f9cc552fa7528c4b6e"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.5.0/ai-workbench-x86_64-apple-darwin.tar.gz"
      sha256 "8dfb7015057219fdd1f3bfd9cc2342cfe322bc79e91a5be9a12297ca958b0801"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eqms/ai-workbench/releases/download/v1.5.0/ai-workbench-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6bca8aa28f36cc8944bca407deaced74ea1fa471048cb4a96ef6d7736260ab68"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.5.0/ai-workbench-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a793b4b5b39caef053abe8287c99a0bc8b1b4913a3370973ae7dbe52f11422c9"
    end
  end

  def install
    bin.install "ai-workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-workbench --version")
  end
end
