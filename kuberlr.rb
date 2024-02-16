# This is an auto-generated file. DO NOT EDIT
class Kuberlr < Formula
  desc "Kuberlr - A tool that simplifies the management of multiple versions of kubectl."
  baseurl = "https://github.com/flavio/kuberlr/releases/download"
  version "0.4.5"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  on_macos do
    on_arm do
      kernel = "darwin"
      sha256 "29adf6dd4b06648944cda9dc2a3bf8d40dfbe97a0042de6a48a140c1988a391b"
      arch = "arm64"
      url baseurl + "/v0.4.5/" + "kuberlr_0.4.5_" + kernel + "_" + arch + ".tar.gz"
    end
    on_intel do
      kernel = "darwin"
      sha256 "ddc8557b2b6a004413f22d8b5f8abfca3ba4c47b7f727f98e1bd8296e949fb96"
      arch = "amd64"
      url baseurl + "/v0.4.5/" + "kuberlr_0.4.5_" + kernel + "_" + arch + ".tar.gz"
    end
  end

  on_linux do
    kernel = "linux"
    sha256 "28959ff8e5add3b714a6c36c042529cfafc3f8c74660b2c56ac2ad969103b091"
    arch = "amd64"
    url baseurl + "/v0.4.5/" + "kuberlr_0.4.5_" + kernel + "_" + arch + ".tar.gz"
  end

  @@bin = "kuberlr"

  def install
    bin.install @@bin
    bin.install_symlink "kuberlr" => "kubectl"
  end
end
