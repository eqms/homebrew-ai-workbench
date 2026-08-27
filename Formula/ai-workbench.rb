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
      url "https://github.com/eqms/ai-workbench/releases/download/v1.12.0/ai-workbench-aarch64-apple-darwin.tar.gz"
      sha256 "a99ea2e9f8b6f10b0c806426ab3a529728882de0192e3cf7c1335d67b0b3a139"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.12.0/ai-workbench-x86_64-apple-darwin.tar.gz"
      sha256 "b299b51c78698b28264676830d2e7957686fff11944af53d5cf7c46383fb9ca3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eqms/ai-workbench/releases/download/v1.12.0/ai-workbench-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "518ab9e3a439f18a054ef737f1f130733402418996caf8264c2403c0000a1c62"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.12.0/ai-workbench-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a814544c59fb9b0ea9d6310977e0e415b19db76261a7eceb2a4d673b40f2f441"
    end
  end

  def install
    bin.install "ai-workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-workbench --version")
  end
end
