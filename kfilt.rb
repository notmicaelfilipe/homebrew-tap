# This is an auto-generated file. DO NOT EDIT
class Kfilt < Formula
    desc "kfilt is a tool that lets you filter specific resources from a stream of Kubernetes YAML manifests."
    baseurl = "https://github.com/ryane/kfilt/releases/download"
    version "1.0.0"

    livecheck do
      url :stable
      regex(/^(\d+(?:\.\d+)+)$/i)
    end

    on_macos do
      on_arm do
        kernel = "darwin"
        sha256 "5d66e9cac69b2b53bb9023fed487d24c31b0f61b6ab292fb92ae4d7dd86426e3"
        arch = "all"
        url baseurl + "/v1.0.0/" + "kfilt_" + kernel + "_" + arch
        @@bin = "kfilt_" + kernel + "_" + arch
      end
      on_intel do
        kernel = "darwin"
        sha256 "5d66e9cac69b2b53bb9023fed487d24c31b0f61b6ab292fb92ae4d7dd86426e3"
        arch = "all"
        url baseurl + "/v1.0.0/" + "kfilt_" + kernel + "_" + arch
        @@bin = "kfilt_" + kernel + "_" + arch
      end
    end

    on_linux do
      on_arm do
        kernel = "linux"
        sha256 "ad670a8d5df5b36ccd5c2d7856398ba30ed48b9d5d5f92a83e3eeaf20cb86e9c"
        arch = "arm64"
        url baseurl + "/v1.0.0/" + "kfilt_" + kernel + "_" + arch
        @@bin = "kfilt_" + kernel + "_" + arch
      end
      on_intel do
        kernel = "linux"
        sha256 "37cf474936d2db58e8b82b5406d367a24a38e6cc8218bc22ca38236e9604b01d"
        arch = "amd64"
        url baseurl + "/v1.0.0/" + "kfilt_" + kernel + "_" + arch
        @@bin = "kfilt_" + kernel + "_" + arch
      end
    end


    def install
      bin.install @@bin => "kfilt"
    end
end
