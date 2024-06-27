# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "66.0.0"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v66.0.0/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4a4fa5d94f28e356eae9ac8e16dbc631bc66e92d025454560a1a3cc765d60f96"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v66.0.0/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "00a7ffb9a3c77869dde341392470b36144eedc08188ead436104aa0c217da38c"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v66.0.0/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a502cfcde89bbc94a2f640d45e6cae9be7fd37663d87992b3ce86686daf33d18"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/taskcluster/taskcluster/releases/download/v66.0.0/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "73b8373f9c58220ae362f6831e9fc9fe33746baee4ed5eabe93f5a00828909d2"

      def install
        bin.install "taskcluster"
      end
    end
  end

  test do
    system "#{bin}/taskcluster version"
  end
end
