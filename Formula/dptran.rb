class Dptran < Formula
  desc "A tool to run DeepL translations on command line."
  homepage "https://github.com/YotioSoft/dptran.git"
  url "https://github.com/YotioSoft/dptran/releases/download/ver.0.1.0/dptran-macos-arm64-ver.0.1.0.tar.gz"
  sha256 "69a76d2987d1442aee2d9c924e2ae6ffb99484d5d79825ba2566af1efcfef701"
  version "0.1.0"

  def install
    bin.install "dptran"
  end
end
