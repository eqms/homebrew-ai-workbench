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
      url "https://github.com/eqms/ai-workbench/releases/download/v1.17.0/ai-workbench-aarch64-apple-darwin.tar.gz"
      sha256 "bfe30c9c24ad051a3828bf539ed8ab5592f7d42acf898f018fffbe7e97df5dea"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.17.0/ai-workbench-x86_64-apple-darwin.tar.gz"
      sha256 "1b3fd9b4a70393b17565bb68f3df57158667b8916db8853b8ec61d99c7f4153f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eqms/ai-workbench/releases/download/v1.17.0/ai-workbench-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3634fbff6f9bf61420ec8c8d53cd162b8644d6fa6103bb4d0bfde3dc1e50aafa"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.17.0/ai-workbench-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d9a9a02d5b936281bf29aa37068828c5e8a4ad299e516a4ad7dcb743dcdcb0d0"
    end
  end

  def install
    bin.install "ai-workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-workbench --version")
  end
end
