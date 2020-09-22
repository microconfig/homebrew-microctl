class Microctl < Formula
  desc "Microconfig Server CLI"
  homepage "https://microconfig.io/"
  version "0.0.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/microconfig/microconfig-server/releases/download/v0.0.3/microctl-macos.zip"
    sha256 "c8ac1208296ef8c1fa7f3cda6448f67b0200ae502a3d145300e8337e3ea5ea23"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/microconfig/microconfig-server/releases/download/v0.0.3/microctl-linux.zip"
      sha256 "c7441ae971654f144f7e83535e00ccfa5b9ff70527ba6f94e2c78998954d3278"
    end
  end

  def install
    bin.install "microctl"
  end

  test do
    system "microctl version"
  end
end
