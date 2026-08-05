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
      url "https://github.com/eqms/ai-workbench/releases/download/v1.10.0/ai-workbench-aarch64-apple-darwin.tar.gz"
      sha256 "2ecc94d45c290dfcf3458781cffad6277c71efdf601e65ba582be1ea96c205e6"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.10.0/ai-workbench-x86_64-apple-darwin.tar.gz"
      sha256 "cbe4803c779c109ad6cec8e7aaf39eb686763e783ee7e9c27556c30f8b6c3b69"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eqms/ai-workbench/releases/download/v1.10.0/ai-workbench-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1474779233b67c10605ac5ea060dc93e3cbd88d14c108cd474bfa9099741b956"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.10.0/ai-workbench-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "40dbbfcaefd97a278c97b7bf5a5b882c78ccb6eec1ef3da5efd802085ae11b6f"
    end
  end

  def install
    bin.install "ai-workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-workbench --version")
  end
end
