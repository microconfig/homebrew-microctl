class Microctl < Formula
  desc "Microconfig Server CLI"
  homepage "https://microconfig.io/"
  version "0.1.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/microconfig/microconfig-server/releases/download/v0.1.5/microctl-macos.zip"
    sha256 "ca72600b117748112ee03c4feb088c995b57fe280ccf748632b5d8dd4ceb9377"
  elsif OS.linux?
    url "https://github.com/microconfig/microconfig-server/releases/download/v0.1.5/microctl-linux.zip"
    sha256 "f2850396c0d96d90711a03bdea627ca2e836cf12dbc7f3727a6df6d5ba52a159"
  end

  def install
    bin.install "microctl"
  end

  test do
    system "microctl version"
  end
end
