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
      url "https://github.com/eqms/ai-workbench/releases/download/v1.11.1/ai-workbench-aarch64-apple-darwin.tar.gz"
      sha256 "0780bbdc9836501f19dadd0aa903cbe255ca1aad2bc548d3285a826e6f05808e"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.11.1/ai-workbench-x86_64-apple-darwin.tar.gz"
      sha256 "a35d9e20f58039fb35d18b5a72b912a211ac37d9551c803f6eb8819760a8ed9a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eqms/ai-workbench/releases/download/v1.11.1/ai-workbench-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ddcb8696f2d8cf9ab6b2fe320c270cef919df556f9c28035d66efa3f3d995913"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.11.1/ai-workbench-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d87a8ca1f97c98a48a1b25109e915852af25628287b6f446cf96f2fb48cf9129"
    end
  end

  def install
    bin.install "ai-workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-workbench --version")
  end
end
