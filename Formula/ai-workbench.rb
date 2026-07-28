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
      url "https://github.com/eqms/ai-workbench/releases/download/v1.9.3/ai-workbench-aarch64-apple-darwin.tar.gz"
      sha256 "b45c1df24d4148329f213081ee34b81820e8cf116f0a26f5c977afbf86bb6058"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.9.3/ai-workbench-x86_64-apple-darwin.tar.gz"
      sha256 "ec401066cb66826cb44f019818aad7fc75cc7df2198880cb0ddae99793de81b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eqms/ai-workbench/releases/download/v1.9.3/ai-workbench-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6de971c2bbd42ee864c07a7d7ae524cdd3dcca0bcf28c2f5c309880cf0825c5e"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.9.3/ai-workbench-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9506a9f6b291b2f452df8ce453c15a7cfba3cde86530fc9f6206450a3baeb272"
    end
  end

  def install
    bin.install "ai-workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-workbench --version")
  end
end
