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
      url "https://github.com/eqms/ai-workbench/releases/download/v1.15.0/ai-workbench-aarch64-apple-darwin.tar.gz"
      sha256 "db932af94d7d4fbd7b7b17024bc1f18133f6c327e2357ebf2bfe6c269a11c87b"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.15.0/ai-workbench-x86_64-apple-darwin.tar.gz"
      sha256 "bcee857e4ce098f2a0fba195cb08c59dd82c34c01cec759a783991057381b55a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eqms/ai-workbench/releases/download/v1.15.0/ai-workbench-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "21f028d9ec94eb9c878746bf66f394a52c8a352d60ea06596a0b1d14d397ba47"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.15.0/ai-workbench-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6b25dc41b53bbea32f16faac0875e362a52bc634fcd62ef852351aa9263c679a"
    end
  end

  def install
    bin.install "ai-workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-workbench --version")
  end
end
