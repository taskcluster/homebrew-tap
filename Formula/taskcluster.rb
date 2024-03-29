# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "64.2.0"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v64.2.0/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b1db28816b3af714705ca70c0ad4e401f80f287da1512b0a3a8a5ae62d467653"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v64.2.0/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "50918909fdee6dbfdfdc47404e4704de6be2d9d953d2cdb7ab7b7c90d8a7a495"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/taskcluster/taskcluster/releases/download/v64.2.0/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0bdf50e697c25a6f7e48285ac2e30e0c5d52fcd44d966c9e9c5063eab31e3c28"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v64.2.0/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f38e1895ae2d02fb0855356c60e2e789dba00599bb1a5bcf76f3bb736054eadd"

      def install
        bin.install "taskcluster"
      end
    end
  end

  test do
    system "#{bin}/taskcluster version"
  end
end
