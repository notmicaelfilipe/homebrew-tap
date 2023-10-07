# This is an auto-generated file. DO NOT EDIT
class Kuberlr < Formula
  desc "Kuberlr - A tool that simplifies the management of multiple versions of kubectl."
  baseurl = "https://github.com/flavio/kuberlr/releases/download"
  version "0.4.4"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  on_macos do
    on_arm do
      kernel = "darwin"
      sha256 "98ea17f30a62f7759bfb64179bc06dce8a9b722fb32b8689b89cbae3a30bf634"
      arch = "arm64"
      url baseurl + "/v0.4.4/" + "kuberlr_0.4.4_" + kernel + "_" + arch + ".tar.gz"
    end
    on_intel do
      kernel = "darwin"
      sha256 "16b5a395872d0ceae07ec6f3f88668e08fbd0fd4cf68404896c0a21fc7c0f62e"
      arch = "amd64"
      url baseurl + "/v0.4.4/" + "kuberlr_0.4.4_" + kernel + "_" + arch + ".tar.gz"
    end
  end

  on_linux do
    kernel = "linux"
    sha256 "1755abbe141ff4adc41a3b06908ce0fdbc53419867779e121e4f3415eb0ad172"
    arch = "amd64"
    url baseurl + "/v0.4.4/" + "kuberlr_0.4.4_" + kernel + "_" + arch + ".tar.gz"
  end

  @@bin = "kuberlr"

  def install
    bin.install @@bin
    bin.install_symlink "kuberlr" => "kubectl"
  end
end