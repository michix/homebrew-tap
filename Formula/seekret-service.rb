# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class SeekretService < Formula
  desc "Daemon for comfortably and securly accessing KeePass secrets"
  homepage "https://github.com/michix/seekret-service"
  url "https://github.com/michix/seekret-service/archive/refs/tags/v1.4.1.tar.gz"
  sha256 "575b49929707fec0098cea6306e4c056364624f6b2c13d7031294c1f06c9e147"
  license "GPL-3.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "cargo", "test" "--nocapture"
  end
end
