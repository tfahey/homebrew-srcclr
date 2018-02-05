require "formula"

class Srcclr < Formula
  VERSION = "2.13.15"

  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-#{VERSION}-macosx.tgz"
  sha256 "848a9e0f9c6e478d5e2883e76fef18e849a9b5b50c1fa694e4a9df86ddf2618d"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    assert_equal "Version: #{VERSION}", `srcclr --version`.strip
  end
end
