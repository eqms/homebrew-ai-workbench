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
      url "https://github.com/eqms/ai-workbench/releases/download/v1.16.0/ai-workbench-aarch64-apple-darwin.tar.gz"
      sha256 "e03ca625cfac5f3bbcd4435868e1627974a27cddae60f428e4cd8e8035f012a9"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.16.0/ai-workbench-x86_64-apple-darwin.tar.gz"
      sha256 "bcafad323ee681e926b8e624ef58b999f8794889768d9dbf25def875627bd3a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eqms/ai-workbench/releases/download/v1.16.0/ai-workbench-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e7b4cc6883e08b2aa78b6796ef352a67500d9d6d0b018deb4ca05ff412c6e334"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.16.0/ai-workbench-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0cb23873028e64852a0445d5db4575843859fa5b28a161825080256e906bc2fa"
    end
  end

  def install
    bin.install "ai-workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-workbench --version")
  end
end
