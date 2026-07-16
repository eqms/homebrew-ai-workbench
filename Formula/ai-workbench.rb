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
      url "https://github.com/eqms/ai-workbench/releases/download/v1.7.0/ai-workbench-aarch64-apple-darwin.tar.gz"
      sha256 "d3e751e3778daf5eb7c819f25f13acda48537752adae469d4601bd77a97159a8"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.7.0/ai-workbench-x86_64-apple-darwin.tar.gz"
      sha256 "5e1815e4e22256a769aa8d115ad3124595f607da4bfac93525bd571c16a049cb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eqms/ai-workbench/releases/download/v1.7.0/ai-workbench-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b39a4ef579c4dfb8f6d271acf7e3b91c82cc450f243278b7b048c8dd4f29aebc"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.7.0/ai-workbench-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "98379004ffe487de71e5e7b5c856eeacf474100be55fd137566e360679a23a5b"
    end
  end

  def install
    bin.install "ai-workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-workbench --version")
  end
end
