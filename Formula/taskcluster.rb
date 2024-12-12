# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "76.0.0"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v76.0.0/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "90b67243a4c8805f36b8c197dbbaf1b0fbbb12e39e3d8fa162b41fd3f26f3176"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v76.0.0/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "de4260460c1a583f2b313ff6ed939c84cbd91cf545ae9f9d316c77d677ee37bc"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/taskcluster/taskcluster/releases/download/v76.0.0/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "79024300cf5a4d13da0b70065b371be71741a82ea249697a81cdd13fb0913b75"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v76.0.0/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "41522474e03e992db140ee1b1b723239a8508df8b697585f799bbf5eeb9fe468"

      def install
        bin.install "taskcluster"
      end
    end
  end

  test do
    system "#{bin}/taskcluster version"
  end
end
