# Homebrew formula template for summon-switcher.
#
# The release workflow replaces the placeholders below before pushing this file
# into the Homebrew tap repository.

class SummonSwitcher < Formula
  desc "Tiny macOS command-line tool for opening, focusing, and cycling applications"
  homepage "https://github.com/liamwh/summon"
  license "Apache-2.0"
  version "0.2.1"

  on_arm do
    url "https://github.com/liamwh/summon/releases/download/v0.2.1/summon-switcher-aarch64-apple-darwin.tar.gz"
    sha256 "5df5e4d913501ceb910aa698aadd1b9d638ef1ab444b6b413bed8022a1a8fede"
  end

  on_intel do
    url "https://github.com/liamwh/summon/releases/download/v0.2.1/summon-switcher-x86_64-apple-darwin.tar.gz"
    sha256 "5ced6412469ae51edfb9870c6e47b4aee416f79c4ec78b7a072f298b86434bdd"
  end

  depends_on :macos

  def install
    bin.install "summon"
  end

  test do
    assert_match "summon", shell_output("#{bin}/summon --help")
  end
end
