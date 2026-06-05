# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class SeekretService < Formula
  desc "A demon for comfortably access to KeePass secrets while maintaining a high level of security"
  homepage "https://github.com/michix/seekret-service"
  url "https://github.com/michix/seekret-service/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "d9f294a929262992886c57be2d212d65fe0989edd54ccf75dfd8007d942564e5"
  license "GPL-3.0"

  depends_on "rust" => :build

  # Additional dependency
  # resource "" do
  #   url ""
  #   sha256 ""
  # end

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test seekret-service`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "cargo", "test" "--" "--nocapture"
  end
end
