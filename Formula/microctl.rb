class Microctl < Formula
  desc "Microconfig Server CLI"
  homepage "https://microconfig.io/"
  version "0.1.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/microconfig/microconfig-server/releases/download/v0.1.5/microctl-macos.zip"
    sha256 "93edd2ffaec0698518fc89a86cf789dda91aa453d2aef8626f00cc56e00bf4b7"
  elsif OS.linux?
    url "https://github.com/microconfig/microconfig-server/releases/download/v0.1.5/microctl-linux.zip"
    sha256 "bb63c85563af94617bf8c9835895f226ab11257b364e0eb6905e02fb4dcd95fa"
  end

  def install
    bin.install "microctl"
  end

  test do
    system "microctl version"
  end
end
