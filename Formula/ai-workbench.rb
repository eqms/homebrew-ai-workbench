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
      url "https://github.com/eqms/ai-workbench/releases/download/v1.11.0/ai-workbench-aarch64-apple-darwin.tar.gz"
      sha256 "f8b3b5b81e4c9f06f66d078689f9c7c8040647423fac7c8ac46537f27983b0f4"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.11.0/ai-workbench-x86_64-apple-darwin.tar.gz"
      sha256 "eeb804dd2f1d13153f7e98ccd067b4d82b939d83402ecb3121fda103790dad29"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eqms/ai-workbench/releases/download/v1.11.0/ai-workbench-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f8eff0cc442b3f3cbe161314147b98ace2eb7be91717a0894804f844fb961337"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.11.0/ai-workbench-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2cd560cfa9f57f9f96241b6a48efb3df8042594d52990b83d08a8ad2bcc233e2"
    end
  end

  def install
    bin.install "ai-workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-workbench --version")
  end
end
