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
      url "https://github.com/eqms/ai-workbench/releases/download/v1.13.2/ai-workbench-aarch64-apple-darwin.tar.gz"
      sha256 "b3a8bff91f8d771a046c4142b0d90e0a4a799816018cbb5e7fed3763bf78332d"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.13.2/ai-workbench-x86_64-apple-darwin.tar.gz"
      sha256 "98c38397378681b988e6e38414b4273e1d79cd30b32a536286815fb9a63e9b7b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eqms/ai-workbench/releases/download/v1.13.2/ai-workbench-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5ef65f043e4e0716c107ba3f36216b47fcbded62927583025da6210c9ecfece1"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.13.2/ai-workbench-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1e22e7cf2d698970bc0df0a3f89a63f67718c7983e974510b52c38cae4fd8c3a"
    end
  end

  def install
    bin.install "ai-workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-workbench --version")
  end
end
