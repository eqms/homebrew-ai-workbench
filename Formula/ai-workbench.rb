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
      url "https://github.com/eqms/ai-workbench/releases/download/v1.9.4/ai-workbench-aarch64-apple-darwin.tar.gz"
      sha256 "8f784739b80b52624cd819dd6cb02c6e41597b444b8d2dde31cd0407fa118d7b"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.9.4/ai-workbench-x86_64-apple-darwin.tar.gz"
      sha256 "313202e37eedc262ce9c76d04335e12c4bd0953dd1c9b72093b64a27d1a7855e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eqms/ai-workbench/releases/download/v1.9.4/ai-workbench-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "16f52888ba78f2273bd70322e2cb804b1ebaef1baa0ba1cf16438cd106e08af9"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.9.4/ai-workbench-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4d06f2a181d5e05a164c1c99ea542f23caaa1dd180704b11a8e6d86b544456c4"
    end
  end

  def install
    bin.install "ai-workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-workbench --version")
  end
end
