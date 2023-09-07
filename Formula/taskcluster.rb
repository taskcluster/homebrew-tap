# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "55.1.0"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v55.1.0/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5fa1540067643b83d1b3cb92df4fea451f5a531dfd60fb916cf970a14ebed2c2"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v55.1.0/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e450bd3ce9bb9bea36809564eef819afdcee1f1e1c72688b047bed6b26a7a266"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/taskcluster/taskcluster/releases/download/v55.1.0/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3b84557c75a7787b3d0d4114fd4b2e4dec441689ba8a6d372ae5b2fa9b173ec5"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v55.1.0/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8f4bde31205ab2f55c4176e2470ac1d59fb37c5b2304028e12898d73a63dc973"

      def install
        bin.install "taskcluster"
      end
    end
  end

  test do
    system "#{bin}/taskcluster version"
  end
end
