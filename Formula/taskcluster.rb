# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "82.1.0"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v82.1.0/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "16d8fa8f8306cfb2ae1dcab7ab2185a13daac8af631c9dcfc1133ea86545ec8a"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v82.1.0/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4576f4216cd076fb075a9ec7a99552aba0a7d27a8d25c2bfa814f512b5a99374"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v82.1.0/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "64d2a64c47f52f6672afd545c50db7d11f2dd05774da9e425e495fba432ba598"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/taskcluster/taskcluster/releases/download/v82.1.0/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "df5acf6ab6cd37524bdeec8f3156ce6b6fc584cef6d19f4d1a07a134c3467d21"

      def install
        bin.install "taskcluster"
      end
    end
  end

  test do
    system "#{bin}/taskcluster version"
  end
end
