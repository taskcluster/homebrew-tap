# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "83.5.2"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v83.5.2/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "adb3a86c6be4352552a8178332db4df0f0418639498033a7e20a732c895c6285"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v83.5.2/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0c753d9efffc9075dd78e14933236659b1332090762848a1110084c5ca23a0d3"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/taskcluster/taskcluster/releases/download/v83.5.2/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "35455f88fee4a463515b4bcb69a81e3a8e47078602e69eaf23eedfbbb0f8f037"

        def install
          bin.install "taskcluster"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/taskcluster/taskcluster/releases/download/v83.5.2/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "22e2fc40d364000ff79d80bcfd5a8eb2ff32a4b4409616dae1011c57e3d9b940"

        def install
          bin.install "taskcluster"
        end
      end
    end
  end

  test do
    system "#{bin}/taskcluster version"
  end
end
