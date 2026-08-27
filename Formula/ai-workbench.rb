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
      url "https://github.com/eqms/ai-workbench/releases/download/v1.12.1/ai-workbench-aarch64-apple-darwin.tar.gz"
      sha256 "ec50a091110ab9017380fa982f9d98a01b4cf55276610f5fb6e6c0bf21d56a5c"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.12.1/ai-workbench-x86_64-apple-darwin.tar.gz"
      sha256 "c0762ee67e298559eddfaed389538c3fd31ee7d71126fae73688cb05cf9f66b4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eqms/ai-workbench/releases/download/v1.12.1/ai-workbench-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0fe75517d802872df9f68bd19b9e7f315351ed013ce10b34d8757f5a01672e0c"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.12.1/ai-workbench-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2b68919b313b3c470b3c5054c22edc42fd23e14f7639fdfca13a5f5730d5fcfe"
    end
  end

  def install
    bin.install "ai-workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-workbench --version")
  end
end
