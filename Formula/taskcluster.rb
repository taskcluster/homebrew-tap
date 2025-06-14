# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "84.2.0"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v84.2.0/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9c3bbea142a13f93d553476d51fd6e938f71cbdfd6fc0b731717a1ed18cb0b42"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v84.2.0/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d99ac7414b11a31cb12175b66fd1225b604c864d1de65856f9c2e0431995a0f0"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/taskcluster/taskcluster/releases/download/v84.2.0/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "740444ae9ec4d1b2bd67a0350204802cb58d96d0e2d3c91111697912c507a776"

        def install
          bin.install "taskcluster"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/taskcluster/taskcluster/releases/download/v84.2.0/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "416138c2ad90488bdae993baad58f31292042f767fc091458818fe18a9c38de7"

        def install
          bin.install "taskcluster"
        end
      end
    end
  end

  test do
    system "#{bin}/taskcluster version"
  end
end
