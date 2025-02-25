# This is an auto-generated file. DO NOT EDIT
class Kfilt < Formula
    desc "kfilt is a tool that lets you filter specific resources from a stream of Kubernetes YAML manifests."
    baseurl = "https://github.com/ryane/kfilt/releases"
    version "0.0.8"

    livecheck do
      url :stable
      regex(/^(\d+(?:\.\d+)+)$/i)
    end

    on_macos do
      on_arm do
        kernel = "darwin"
        sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
        arch = "arm64"
        url baseurl + "/v0.0.8/" + "kfilt_0.0.8_" + kernel + "_" + arch
      end
      on_intel do
        kernel = "darwin"
        sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
        arch = "amd64"
        url baseurl + "/v0.0.8/" + "kfilt_0.0.8_" + kernel + "_" + arch
      end
    end

    on_linux do
      on_arm do
        kernel = "linux"
        sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
        arch = "arm64"
        url baseurl + "/v0.0.8/" + "kfilt_0.0.8_" + kernel + "_" + arch
      end
      on_intel do
        kernel = "linux"
        sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
        arch = "amd64"
        url baseurl + "/v0.0.8/" + "kfilt_0.0.8_" + kernel + "_" + arch
      end
    end

    @@bin = "kfilt"

    def install
      bin.install @@bin
    end
end
