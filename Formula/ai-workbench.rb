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
      url "https://github.com/eqms/ai-workbench/releases/download/v1.8.0/ai-workbench-aarch64-apple-darwin.tar.gz"
      sha256 "d8a8339d74eefc302bea43028eafb03a70fb514b6fe806c85b923e3ce7e53d98"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.8.0/ai-workbench-x86_64-apple-darwin.tar.gz"
      sha256 "16dafea440b1c7444b0091ea77ea3c75dd5c3c080c499e76dd03db1e5e89c4d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eqms/ai-workbench/releases/download/v1.8.0/ai-workbench-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "72e2f25d8c11bd861414b76beea3a3309589bfb480c88a086d3cdad57f75a539"
    else
      url "https://github.com/eqms/ai-workbench/releases/download/v1.8.0/ai-workbench-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "129236e60cb4aac266e471e36b2bf51519b931bea3212e4ff1a9beae2d44e96a"
    end
  end

  def install
    bin.install "ai-workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-workbench --version")
  end
end
