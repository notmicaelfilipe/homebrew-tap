# This is an auto-generated file. DO NOT EDIT
class KubectlNetshoot < Formula
    desc "Kubectl Netshoot Plugin."
    baseurl = "https://github.com/nilic/kubectl-netshoot/releases/download"
    version "v0.1.0"

    livecheck do
      url :stable
      regex(/^v?(\d+(?:\.\d+)+)$/i)
    end

    on_macos do
      on_arm do
        kernel = "darwin"
        sha256 "c819d0edcd3195629ee1efc64f5def86e0d846169ab65c01f4efb5c9dabd2690"
        arch = "arm64"
        url baseurl + "/v0.1.0/" + "kubectl-netshoot_v0.1.0_" + kernel + "_" + arch + ".tar.gz"
      end
      on_intel do
        kernel = "darwin"
        sha256 "c155765fedf68c194aac92f48b52daec8792138ec1f2e2848f9cf49e764d181f"
        arch = "amd64"
        url baseurl + "/v0.1.0/" + "kubectl-netshoot_v0.1.0_" + kernel + "_" + arch + ".tar.gz"
      end
    end

    on_linux do
      kernel = "linux"
      sha256 "d67bb782630e1102d1598ff5ef7c6c846143e5c8e676d604847c1e14a083100f"
      arch = "amd64"
      url baseurl + "/v0.1.0/" + "kubectl-netshoot_v0.1.0_" + kernel + "_" + arch + ".tar.gz"
    end

    @@bin = "kubectl-netshoot"

    def install
      bin.install @@bin
    end
end
