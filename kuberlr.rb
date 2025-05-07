# This is an auto-generated file. DO NOT EDIT
class Kuberlr < Formula
    desc "Kuberlr - A tool that simplifies the management of multiple versions of kubectl."
    baseurl = "https://github.com/flavio/kuberlr/releases/download"
    version "0.6.0"

    livecheck do
      url :stable
      regex(/^v?(\d+(?:\.\d+)+)$/i)
    end

    on_macos do
      on_arm do
        kernel = "darwin"
        sha256 "362a993f52048845c19385a2eeb9a8827fa9ae46daec2e8ebdfc962270db5bbd"
        arch = "arm64"
        url baseurl + "/v0.6.0/" + "kuberlr_0.6.0_" + kernel + "_" + arch + ".tar.gz"
      end
      on_intel do
        kernel = "darwin"
        sha256 "67fdef2cef62e7e4a3c5145e4bfc736a988c0f4ffe0c1bba84c8b61510e92c5d"
        arch = "amd64"
        url baseurl + "/v0.6.0/" + "kuberlr_0.6.0_" + kernel + "_" + arch + ".tar.gz"
      end
    end

    on_linux do
      kernel = "linux"
      sha256 "8e3519b86a0e459b923e12da38c80ef9e73172cdd14b6086eb613c78058d2993"
      arch = "amd64"
      url baseurl + "/v0.6.0/" + "kuberlr_0.6.0_" + kernel + "_" + arch + ".tar.gz"
    end

    @@bin = "kuberlr"

    def install
      bin.install @@bin
      bin.install_symlink "kuberlr" => "kubectl"
    end
end
