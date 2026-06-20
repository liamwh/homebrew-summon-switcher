# Homebrew formula template for summon-switcher.
#
# The release workflow replaces the placeholders below before pushing this file
# into the Homebrew tap repository.

class SummonSwitcher < Formula
  desc "Tiny macOS command-line tool for opening, focusing, and cycling applications"
  homepage "https://github.com/liamwh/summon"
  license "Apache-2.0"
  version "0.1.0"

  on_arm do
    url "https://github.com/liamwh/summon/releases/download/v0.1.0/summon-switcher-aarch64-apple-darwin.tar.gz"
    sha256 "6fff4093013aa075945472ff799fe9a87e7bfea446789b73e80a805c8754c233"
  end

  on_intel do
    url "https://github.com/liamwh/summon/releases/download/v0.1.0/summon-switcher-x86_64-apple-darwin.tar.gz"
    sha256 "6dcff0e82463b1cb7b125c7037439bc7f487f9e790e1cd581b6ac8c9c0aca973"
  end

  depends_on :macos

  def install
    bin.install "summon"
  end

  test do
    assert_match "summon", shell_output("#{bin}/summon --help")
  end
end
