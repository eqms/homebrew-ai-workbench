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
      url "https://github.com/eqms/ai-workbench/releases/download/v1.13.1/ai-workbench-aarch64-apple-darwin.tar.gz"
      sha256 "178e73a3260260aa5a3baa0be74b9ecf4aedfb93de9162d345e672e7c1e3292f"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.13.1/ai-workbench-x86_64-apple-darwin.tar.gz"
      sha256 "1a6aa424986eb502c3bc0dd52c8923392f97f4c79e7de58579f6fe35d7331686"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eqms/ai-workbench/releases/download/v1.13.1/ai-workbench-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "114756e2af91095c8b1bdb5a3313e812407b431013a9e5c0c35613f93b1faa0c"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.13.1/ai-workbench-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "436936f474eeb2e44901fca55e24929b7f1dca6a96e1eb0f22bd60478a97b3dd"
    end
  end

  def install
    bin.install "ai-workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-workbench --version")
  end
end
