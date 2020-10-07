class Microctl < Formula
  desc "Microconfig Server CLI"
  homepage "https://microconfig.io/"
  version "0.1.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/microconfig/microconfig-server/releases/download/v0.1.5/microctl-macos.zip"
    sha256 "f36069fb4c4e263eee2e56703c22cf65994b838650a370cb97cc13d02d5ec4b6"
  elsif OS.linux?
    url "https://github.com/microconfig/microconfig-server/releases/download/v0.1.5/microctl-linux.zip"
    sha256 "b6c09b0a857a6cbff1a5965d8a47406b2fabdd14e14fbe676bbeff68368e5620"
  end

  def install
    bin.install "microctl"
  end

  test do
    system "microctl version"
  end
end
