# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "83.10.0"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v83.10.0/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "0da861fd305779bbf073f76679916b83fbbe79f7c1675b1971b8eecf5cd2029e"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v83.10.0/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "200e65a0a13eb547f65643dc4c53f1fa7c39dcb2154190002142f631a48a280a"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/taskcluster/taskcluster/releases/download/v83.10.0/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "368d61bf2dfddb527705ec2105b846286db28fb35e7dd88857515c46e57f1982"

        def install
          bin.install "taskcluster"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/taskcluster/taskcluster/releases/download/v83.10.0/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "3d1fb18797931254269a4eeb9df52990095ed2621534f7732b519e33017f4981"

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
