#!/bin/sh

set -e -x

if [ "$#" -lt 1 ]; then
  echo "Usage: ./update.sh VERSION"
  exit 1
fi

VERSION="$1"
DWVERSION="v$VERSION"

URL_BASE="https://github.com/ryane/kfilt/releases/download"
CLASSNAME="Kfilt"
DESC="kfilt is a tool that lets you filter specific resources from a stream of Kubernetes YAML manifests."
NAME="kfilt"
CLI_NAME="kfilt_${VERSION}"

# OSX

#amd64
OSX_CLI_NAME="${CLI_NAME}_darwin_all"
OSX_BINPATH="/tmp/${OSX_CLI_NAME}"
curl -L -o "${OSX_BINPATH}" -s "${URL_BASE}/${DWVERSION}/${OSX_CLI_NAME}"
OSX_AMD64_SHA256=$(shasum -a 256 "${OSX_BINPATH}" | awk '{print $1}')

#arm64
OSX_CLI_NAME="${CLI_NAME}_darwin_all"
OSX_BINPATH="/tmp/${OSX_CLI_NAME}"
curl -L -o "${OSX_BINPATH}" -s "${URL_BASE}/${DWVERSION}/${OSX_CLI_NAME}"
OSX_ARM64_SHA256=$(shasum -a 256 "${OSX_BINPATH}" | awk '{print $1}')

# Linux

#amd64
LINUX_CLI_NAME="${CLI_NAME}_linux_amd64"
LINUX_BINPATH="/tmp/${LINUX_CLI_NAME}"
curl -L -o "${LINUX_BINPATH}" -s "${URL_BASE}/${DWVERSION}/${LINUX_CLI_NAME}"
LINUX_AMD64_SHA256=$(shasum -a 256 "${LINUX_BINPATH}" | awk '{print $1}')

#arm64
LINUX_CLI_NAME="${CLI_NAME}_linux_arm64"
LINUX_BINPATH="/tmp/${LINUX_CLI_NAME}"
curl -L -o "${LINUX_BINPATH}" -s "${URL_BASE}/${DWVERSION}/${LINUX_CLI_NAME}"
LINUX_ARM64_SHA256=$(shasum -a 256 "${LINUX_BINPATH}" | awk '{print $1}')


CLASS_POSTFIX=$(echo "${BREW_VERSION}" | tr -d '.')
CLASS_POSTFIX=$(echo "${CLASS_POSTFIX}" | sed "s/@/AT/g")
TEMPLATE="# This is an auto-generated file. DO NOT EDIT
class ${CLASSNAME}${CLASS_POSTFIX} < Formula
    desc \"${DESC}\"
    baseurl = \"${URL_BASE}\"
    version \"${VERSION}\"

    livecheck do
      url :stable
      regex(/^(\d+(?:\.\d+)+)$/i)
    end

    on_macos do
      on_arm do
        kernel = \"darwin\"
        sha256 \"${OSX_ARM64_SHA256}\"
        arch = \"arm64\"
        url baseurl + \"/${DWVERSION}/\" + \"${CLI_NAME}_\" + kernel + \"_\" + arch
      end
      on_intel do
        kernel = \"darwin\"
        sha256 \"${OSX_AMD64_SHA256}\"
        arch = \"amd64\"
        url baseurl + \"/${DWVERSION}/\" + \"${CLI_NAME}_\" + kernel + \"_\" + arch
      end
    end

    on_linux do
      on_arm do
        kernel = \"linux\"
        sha256 \"${LINUX_ARM64_SHA256}\"
        arch = \"arm64\"
        url baseurl + \"/${DWVERSION}/\" + \"${CLI_NAME}_\" + kernel + \"_\" + arch
      end
      on_intel do
        kernel = \"linux\"
        sha256 \"${LINUX_AMD64_SHA256}\"
        arch = \"amd64\"
        url baseurl + \"/${DWVERSION}/\" + \"${CLI_NAME}_\" + kernel + \"_\" + arch
      end
    end

    @@bin = \"${NAME}\"

    def install
      bin.install @@bin
    end
end"

echo "${TEMPLATE}" > "./${NAME}${BREW_VERSION}.rb"