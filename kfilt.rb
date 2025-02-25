# This is an auto-generated file. DO NOT EDIT
class Kfilt < Formula
    desc "kfilt is a tool that lets you filter specific resources from a stream of Kubernetes YAML manifests."
    baseurl = "https://github.com/ryane/kfilt/releases/download"
    version "0.0.8"

    livecheck do
      url :stable
      regex(/^(\d+(?:\.\d+)+)$/i)
    end

    on_macos do
      on_arm do
        kernel = "darwin"
        sha256 "0fc6dd9698b60a65c207a0deb960a974f14683536a705b8f91dc250414c21f4c"
        arch = "arm64"
        url baseurl + "/v0.0.8/" + "kfilt_0.0.8_" + kernel + "_" + arch
      end
      on_intel do
        kernel = "darwin"
        sha256 "0fc6dd9698b60a65c207a0deb960a974f14683536a705b8f91dc250414c21f4c"
        arch = "amd64"
        url baseurl + "/v0.0.8/" + "kfilt_0.0.8_" + kernel + "_" + arch
      end
    end

    on_linux do
      on_arm do
        kernel = "linux"
        sha256 "8e968cbd950bda852b8d255f5d8359d193982d12efa0a90bb2747d757fa594ba"
        arch = "arm64"
        url baseurl + "/v0.0.8/" + "kfilt_0.0.8_" + kernel + "_" + arch
      end
      on_intel do
        kernel = "linux"
        sha256 "506bb3cd245b9f5235073626c0fe3d0ae205ca0f4de0e006b875e6bb8143e69a"
        arch = "amd64"
        url baseurl + "/v0.0.8/" + "kfilt_0.0.8_" + kernel + "_" + arch
      end
    end

    @@bin = "kfilt_0.0.8_" + kernel + "_" + arch

    def install
      bin.install @@bin
    end
end
