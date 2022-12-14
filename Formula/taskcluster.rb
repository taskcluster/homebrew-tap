# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "47.0.2"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v47.0.2/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3d90b69ef2e675057cec5df72038f523e44621b2c7747a856653df93d2cad314"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v47.0.2/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "d4c48107b5f17ae1edf8f31fe1d36c4457a9da2c6a903ddf8899888a00f12448"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/taskcluster/taskcluster/releases/download/v47.0.2/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "846cbc62aeeefcff28c3578cd4716548cfbc236b720252be1a28c447e1ee0c7a"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v47.0.2/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5dd5c517558e6b8d704a33fc06230bf20dc148beed86adf271b4522ae4dd09f1"

      def install
        bin.install "taskcluster"
      end
    end
  end

  test do
    system "#{bin}/taskcluster version"
  end
end
