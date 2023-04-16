# This is an auto-generated file. DO NOT EDIT
class Kuberlr < Formula
    desc "Kuberlr - A tool that simplifies the management of multiple versions of kubectl."
    baseurl = "https://github.com/flavio/kuberlr/releases/download"
    version "0.4.2"

    livecheck do
      url :stable
      regex(/^v?(\d+(?:\.\d+)+)$/i)
    end

    on_macos do
      on_arm do
        kernel = "darwin"
        sha256 "1b5935ce85b182822d362953c0526b2611f108a563d106071db42ed4d116f8e4"
        arch = "arm64"
        url baseurl + "/v0.4.2/" + "kuberlr_0.4.2_" + kernel + "_" + arch + ".tar.gz"
      end
      on_intel do
        kernel = "darwin"
        sha256 "171a81dc391599f186a0bb367c17f4972ec802e9ac20b1441b9552d72120c34c"
        arch = "amd64"
        url baseurl + "/v0.4.2/" + "kuberlr_0.4.2_" + kernel + "_" + arch + ".tar.gz"
      end
    end

    on_linux do
      kernel = "linux"
      sha256 "ad7c52733e4cdf57d01d64ab36c870e5074a12b1a580ecb77c72e467aeef599b"
      arch = "amd64"
      url baseurl + "/v0.4.2/" + "kuberlr_0.4.2_" + kernel + "_" + arch + ".tar.gz"
    end

    @@bin = "kuberlr"

    def install
      bin.install @@bin
      bin.install_symlink "kuberlr" => "kubectl"
    end
end
