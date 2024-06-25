# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "65.3.0"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v65.3.0/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "26de637729aefa02c90c4d09c6cf0156b034a10617575cee312482cfd1636ef6"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v65.3.0/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f1956c7233b22a8708092aedcf6d3e4655b83431fc39e784230c6fe6c48737ec"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/taskcluster/taskcluster/releases/download/v65.3.0/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "cb449a701bef4b813100d1e92d795218c9cc8b0c9f90e9ba0e67403261596200"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v65.3.0/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a8ad2cba62f78b5738dd66215d1d480ea000c0481d98a39cad933d83c0ccc257"

      def install
        bin.install "taskcluster"
      end
    end
  end

  test do
    system "#{bin}/taskcluster version"
  end
end
