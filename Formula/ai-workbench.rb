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
      url "https://github.com/eqms/ai-workbench/releases/download/v1.9.2/ai-workbench-aarch64-apple-darwin.tar.gz"
      sha256 "0a167789a861f18daa0af5686bd16dd549251d2c893c27c8b41462fc91cfb72a"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.9.2/ai-workbench-x86_64-apple-darwin.tar.gz"
      sha256 "e4274318dffa4786ac3c779741e17358c4458e75fac6403ab853e3a38b2c5bec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eqms/ai-workbench/releases/download/v1.9.2/ai-workbench-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "706c126e515969abc4b211582e0fac0d380abf876824eb21f4246f799d146d2d"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.9.2/ai-workbench-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ad38904a0ee07b9fd6263cb04806502e240a00e05d8b165f151dd48014cd312c"
    end
  end

  def install
    bin.install "ai-workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-workbench --version")
  end
end
