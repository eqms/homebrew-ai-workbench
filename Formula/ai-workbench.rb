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
      url "https://github.com/eqms/ai-workbench/releases/download/v1.10.1/ai-workbench-aarch64-apple-darwin.tar.gz"
      sha256 "4129dfc9920297aeffd7f0f00d35475dc08fca01d714384b5bf68ed7443df268"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.10.1/ai-workbench-x86_64-apple-darwin.tar.gz"
      sha256 "44daec7dd90bcd614cae1fce81414bc814d602229ca0e6e1ef79469a383f1aa9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eqms/ai-workbench/releases/download/v1.10.1/ai-workbench-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "72139808295c872fce620d1c5cd6bd2f8b747e6819c52e624d56da72ebcb77db"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.10.1/ai-workbench-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "696ca3e5c4e9aa9f8947b1864babbb4765436d6f514cf9b8989719f5a4654cdd"
    end
  end

  def install
    bin.install "ai-workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-workbench --version")
  end
end
