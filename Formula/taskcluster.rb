# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "78.1.0"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v78.1.0/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "69aa3b733bc3911dd82ba91fa43379966c173c70db8ed1a70bec97430bab69cf"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v78.1.0/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "75bfa0582022d0b83d17c1fd8eb0bc7b7aab3d8ef06a9c57f618c2c03ac7e56c"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/taskcluster/taskcluster/releases/download/v78.1.0/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f7b25fe2df55ac8cfcb07de5bab57bf3e70fe2fcb6685e88c99d995afd124fd9"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v78.1.0/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "e3d6df245a424d12d0ead58861c286f256145e886bb9bdad91e8139504816543"

      def install
        bin.install "taskcluster"
      end
    end
  end

  test do
    system "#{bin}/taskcluster version"
  end
end
