# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Dptran < Formula
  desc "A tool to run DeepL translations on command line (for my Rust studies)."
  homepage ""
  url "https://github.com/YotioSoft/dptran/releases/download/ver.0.1.0/dptran-macos-arm64-ver.0.1.0.tar.gz"
  sha256 "69a76d2987d1442aee2d9c924e2ae6ffb99484d5d79825ba2566af1efcfef701"
  license ""

  depends_on "rust" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "cargo", "install", *std_cargo_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test dptran`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
