class Microctl < Formula
  desc "Microconfig Server CLI"
  homepage "https://microconfig.io/"
  version "0.5.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/microconfig/microconfig-server/releases/download/v0.5.0/microctl-macos.zip"
    sha256 "7d809f8264acd053b2d33d820dad91de9c937c5676e485cf77d2eba6dbe9c21d"
  elsif OS.linux?
    url "https://github.com/microconfig/microconfig-server/releases/download/v0.5.0/microctl-linux.zip"
    sha256 "654253089c02cc8a9adf60316a60ffcea74c81c0fadab341336bbd091edb707c"
  end

  def install
    bin.install "microctl"
  end

  test do
    system "microctl version"
  end
end
