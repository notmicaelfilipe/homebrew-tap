# This is an auto-generated file. DO NOT EDIT
class Kuberlr < Formula
    desc "Kuberlr - A tool that simplifies the management of multiple versions of kubectl."
    baseurl = "https://github.com/flavio/kuberlr/releases/download"
    version "0.6.1"

    livecheck do
      url :stable
      regex(/^v?(\d+(?:\.\d+)+)$/i)
    end

    on_macos do
      on_arm do
        kernel = "darwin"
        sha256 "a02f536019efd8096b2145d3d5a7762f2a8f14d7a6abfbac503e35e24293bac9"
        arch = "arm64"
        url baseurl + "/v0.6.1/" + "kuberlr_0.6.1_" + kernel + "_" + arch + ".tar.gz"
      end
      on_intel do
        kernel = "darwin"
        sha256 "cf2ba65e2f0bfd13f96187654aab03f7e240d871a222f248078eba94b275bf5e"
        arch = "amd64"
        url baseurl + "/v0.6.1/" + "kuberlr_0.6.1_" + kernel + "_" + arch + ".tar.gz"
      end
    end

    on_linux do
      kernel = "linux"
      sha256 "10874d9097c6c2657a0e06395fc321daa0060f18581a1de6ea6526625e2f124f"
      arch = "amd64"
      url baseurl + "/v0.6.1/" + "kuberlr_0.6.1_" + kernel + "_" + arch + ".tar.gz"
    end

    @@bin = "kuberlr"

    def install
      bin.install @@bin
      bin.install_symlink "kuberlr" => "kubectl"
    end
end
