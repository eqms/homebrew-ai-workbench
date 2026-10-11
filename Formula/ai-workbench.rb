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
      url "https://github.com/eqms/ai-workbench/releases/download/v1.14.0/ai-workbench-aarch64-apple-darwin.tar.gz"
      sha256 "67d5b4a4ce075db2feb26321eff2f5521b5fe8543c731b397d680f8642cffa16"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.14.0/ai-workbench-x86_64-apple-darwin.tar.gz"
      sha256 "5ee95101ffbae834aef367c894a5c4babf734256a981872135388ed222984e4e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eqms/ai-workbench/releases/download/v1.14.0/ai-workbench-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "41212ff92b57113fdf2e1581c6fcf8245f53d672391d159d19bd7ce08df48525"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.14.0/ai-workbench-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "127e61c2da97a6c0aa19341625f375fa860c3642316a6a0249000d5572a3ee38"
    end
  end

  def install
    bin.install "ai-workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-workbench --version")
  end
end
