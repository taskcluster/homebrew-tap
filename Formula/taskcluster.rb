# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "60.1.1"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v60.1.1/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "12685e7a1314ba21723fa48f16e7806d0139621c171abbc55ea60a5d1d7abe8f"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v60.1.1/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "253ce62b00a7324f7b63d65d7903f0ae76d2e905fb0bd29b26ff06c2e020ed34"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/taskcluster/taskcluster/releases/download/v60.1.1/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c13527ddbb28980c81d5cda034985d9744e9867b004d43dcc6aee2f2b8c1883e"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v60.1.1/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "fa86771178c2190f865007a69538ced33773f5cd0c64910daec3eeb010667cfa"

      def install
        bin.install "taskcluster"
      end
    end
  end

  test do
    system "#{bin}/taskcluster version"
  end
end
