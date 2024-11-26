# This is an auto-generated file. DO NOT EDIT
class Kuberlr < Formula
    desc "Kuberlr - A tool that simplifies the management of multiple versions of kubectl."
    baseurl = "https://github.com/flavio/kuberlr/releases/download"
    version "0.5.2"

    livecheck do
      url :stable
      regex(/^v?(\d+(?:\.\d+)+)$/i)
    end

    on_macos do
      on_arm do
        kernel = "darwin"
        sha256 "b9ac9c0e25bb3e88255df8161f19ba81291388e11e26d5f5e0307126e9f26fe1"
        arch = "arm64"
        url baseurl + "/v0.5.2/" + "kuberlr_0.5.2_" + kernel + "_" + arch + ".tar.gz"
      end
      on_intel do
        kernel = "darwin"
        sha256 "28e959d534c8b12451e626504191df903ac6ca6071fdfdf7de81a420c90b27f7"
        arch = "amd64"
        url baseurl + "/v0.5.2/" + "kuberlr_0.5.2_" + kernel + "_" + arch + ".tar.gz"
      end
    end

    on_linux do
      kernel = "linux"
      sha256 "17beba3b30a1a518bdc567688e7040cea419365ab00f09fbfa09b2b335988068"
      arch = "amd64"
      url baseurl + "/v0.5.2/" + "kuberlr_0.5.2_" + kernel + "_" + arch + ".tar.gz"
    end

    @@bin = "kuberlr"

    def install
      bin.install @@bin
      bin.install_symlink "kuberlr" => "kubectl"
    end
end
