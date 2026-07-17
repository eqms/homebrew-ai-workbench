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
      url "https://github.com/eqms/ai-workbench/releases/download/v1.9.0/ai-workbench-aarch64-apple-darwin.tar.gz"
      sha256 "57f54525d876746a551ad630b1b1c5259a29f7c1ac38340e3a212da2ac61aa45"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.9.0/ai-workbench-x86_64-apple-darwin.tar.gz"
      sha256 "0205066f1966a65a1b44da33688354dc17a21d39d83963ad4f965121ffe0691a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eqms/ai-workbench/releases/download/v1.9.0/ai-workbench-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ba1f14e4ea8345ba18aebea55d723f7fd861affcc3c9b996727a5915c8fba975"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.9.0/ai-workbench-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "08606e2bf8a1dd7a87c225bf270b18d94d592ca05b3df29c43ca8ba7ebe2a89b"
    end
  end

  def install
    bin.install "ai-workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-workbench --version")
  end
end
