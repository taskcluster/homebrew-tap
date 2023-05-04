# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "49.2.0"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v49.2.0/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9cfbd80bef7c4036ad713e60542b442ed6a90b8e0c9cba838ed14e07aacbc39d"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v49.2.0/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "642140488eecced150aa26dcb7361ac6c5682de72c5384b88556c9f98195c3a2"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/taskcluster/taskcluster/releases/download/v49.2.0/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0676aafe3f291e690a80312d905bef7087bb04c7af3a3d941cdf6aee0ad33519"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v49.2.0/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "19cc17cfb69ba2551ec1b61f07890a122847df094dcbad28d79d43b3c0a4f7fa"

      def install
        bin.install "taskcluster"
      end
    end
  end

  test do
    system "#{bin}/taskcluster version"
  end
end
