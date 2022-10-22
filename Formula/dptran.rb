# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Dptran < Formula
  desc "A tool to run DeepL translations on command line (for my Rust studies)."
  homepage ""
  url "https://github.com/YotioSoft/dptran/archive/refs/tags/ver.0.1.0.tar.gz"
  sha256 "eb5d154e0b2c76b1542647d21e3802653c8715bdae82f1a847ae9a1d7010afdd"
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
