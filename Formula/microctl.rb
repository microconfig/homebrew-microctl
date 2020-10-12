class Microctl < Formula
  desc "Microconfig Server CLI"
  homepage "https://microconfig.io/"
  version "0.2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/microconfig/microconfig-server/releases/download/v0.2.0/microctl-macos.zip"
    sha256 "22b615b5b45d377197ca00a3ebd1280a9a27db49aa514c9bb16f8e7044264916"
  elsif OS.linux?
    url "https://github.com/microconfig/microconfig-server/releases/download/v0.2.0/microctl-linux.zip"
    sha256 "a1a9769fcbf5e796828f9405024b05b13eb324747ced21fe790e2b07a0d9c1d5"
  end

  def install
    bin.install "microctl"
  end

  test do
    system "microctl version"
  end
end
