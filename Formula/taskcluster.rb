# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "83.0.1"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v83.0.1/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "07c02007bdc132dc4c65776177e6068f9ae639e15865e3f0a08411502151696b"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v83.0.1/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "dedbad03e7a59cb3449b586aeba9cd216042a938bae80848796f5a7ff303071b"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v83.0.1/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c63f9f1a3b8b2c9aae2d5f33e5191d1163d77cd9254427ce041ab852985f52c9"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/taskcluster/taskcluster/releases/download/v83.0.1/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f95d8382ddfe24a9bf077642e142af3b4fa8915709edfc7355626d16e002c263"

      def install
        bin.install "taskcluster"
      end
    end
  end

  test do
    system "#{bin}/taskcluster version"
  end
end
