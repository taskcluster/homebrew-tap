# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "64.3.0"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v64.3.0/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b923c71a0ed3098d5db2bee95925b7a7b99994932fcbad5b719f5f4f46035e9b"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v64.3.0/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "49463932f7cdd645906ab99689931e289297cc823652aacaacf96815d70fa13f"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/taskcluster/taskcluster/releases/download/v64.3.0/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "787a2f82c2c43d383915d0895578ecdece1e4f020ba55bfd705c169f47951fc0"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v64.3.0/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2e9011e375024dd338aa2919f1394390009f8eaeba738554ce3f22336f2c5901"

      def install
        bin.install "taskcluster"
      end
    end
  end

  test do
    system "#{bin}/taskcluster version"
  end
end
