class Microctl < Formula
  desc "Microconfig Server CLI"
  homepage "https://microconfig.io/"
  version "0.3.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/microconfig/microconfig-server/releases/download/v0.3.0/microctl-macos.zip"
    sha256 "b1668c7b90cc01c8f0de13589c3f5b4f96d9858cde155f26f6ee619563ee7a39"
  elsif OS.linux?
    url "https://github.com/microconfig/microconfig-server/releases/download/v0.3.0/microctl-linux.zip"
    sha256 "efb394040a732ce9f50d4e4c62930fe0117719dc17877c574c83ac3937f91f78"
  end

  def install
    bin.install "microctl"
  end

  test do
    system "microctl version"
  end
end
