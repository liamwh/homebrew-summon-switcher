# Homebrew formula template for summon-switcher.
#
# The release workflow replaces the placeholders below before pushing this file
# into the Homebrew tap repository.

class SummonSwitcher < Formula
  desc "Tiny macOS command-line tool for opening, focusing, and cycling applications"
  homepage "https://github.com/liamwh/summon"
  license "Apache-2.0"
  version "0.2.0"

  on_arm do
    url "https://github.com/liamwh/summon/releases/download/v0.2.0/summon-switcher-aarch64-apple-darwin.tar.gz"
    sha256 "74af867da65c67e3c636c71f39502c8612b7c778a912ae08472c61a961140c24"
  end

  on_intel do
    url "https://github.com/liamwh/summon/releases/download/v0.2.0/summon-switcher-x86_64-apple-darwin.tar.gz"
    sha256 "3ce517a94b77f881cd0266929de722d6660f27a9b69b39c89e1235db90bb95d4"
  end

  depends_on :macos

  def install
    bin.install "summon"
  end

  test do
    assert_match "summon", shell_output("#{bin}/summon --help")
  end
end
