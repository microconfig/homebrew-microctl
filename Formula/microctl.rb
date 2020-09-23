class Microctl < Formula
  desc "Microconfig Server CLI"
  homepage "https://microconfig.io/"
  version "0.1.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/microconfig/microconfig-server/releases/download/v0.1.3/microctl-macos.zip"
    sha256 "01be484964a3657a1cf7c34b3f191c3f2d9d60c73f6325c7b4f7652b68d00aaf"
  elsif OS.linux?
    url "https://github.com/microconfig/microconfig-server/releases/download/v0.1.3/microctl-linux.zip"
    sha256 "8fdba68a380ef868cf29ee3ef98a1932f1f1b56abee084ccfd0bd2a300834c2f"
  end

  def install
    bin.install "microctl"
  end

  test do
    system "microctl version"
  end
end
