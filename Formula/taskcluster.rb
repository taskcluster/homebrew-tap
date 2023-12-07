# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "59.1.1"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v59.1.1/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "150fe0ebebabe3e7c9287bf7e53345cd1e8d5f9d2dc0c01788cf63841b8cf0c9"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v59.1.1/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "834e4090a55b6ce7c84e3e3eca906a857a33af2c95205f6997e1fda81efe15bf"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v59.1.1/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "fb0c523403543e2b94b2735319100a44ee33f57d9f49ce684874a2acdd3f723a"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/taskcluster/taskcluster/releases/download/v59.1.1/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c19f594dc8baa660fbf8aa97ebd9ee2f6c4cfad03ce4b799271d423a35fb04b4"

      def install
        bin.install "taskcluster"
      end
    end
  end

  test do
    system "#{bin}/taskcluster version"
  end
end
