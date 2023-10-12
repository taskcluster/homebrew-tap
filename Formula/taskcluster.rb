# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "56.0.2"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v56.0.2/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "79ba8bd4daa07f0c5709773643b5ff0a205038d631d990508ad02cdf99093174"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v56.0.2/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "1768ac1759cb9843d18f3b60244b0b539506eb606f006ed6123025e66b655d4d"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/taskcluster/taskcluster/releases/download/v56.0.2/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f8d528308f2554abba50c7c79476d24c94feaef4b8dbca74068d700a2f408b0b"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v56.0.2/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8afc713f940efc2c9ff0d9b3689422227b1829f626cb26aa81e107271d563bcf"

      def install
        bin.install "taskcluster"
      end
    end
  end

  test do
    system "#{bin}/taskcluster version"
  end
end
