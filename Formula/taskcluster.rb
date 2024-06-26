# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "66.0.0"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v66.0.0/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "8cf4d41c946125f54795f3589c7b536f26e44cdd213abeae84b6a99a2c6b9ea0"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v66.0.0/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2aadeed0b270b6efaf74f3783847d45da98fd4fe9d0b0a2cd18e0e27e78c7f9f"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v66.0.0/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c7790523b63c99d2cb28b3b6a154d7479b894fde6ea7624cfd0e746b63720d4b"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/taskcluster/taskcluster/releases/download/v66.0.0/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e3bd0e9f5d3c65c6fad5287cd8e821c8404e8a0eb83110497db02eec56cdbb5c"

      def install
        bin.install "taskcluster"
      end
    end
  end

  test do
    system "#{bin}/taskcluster version"
  end
end
