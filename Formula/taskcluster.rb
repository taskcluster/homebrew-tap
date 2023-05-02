# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "49.1.3"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v49.1.3/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4fb417b23f8c5fce5305eceb684701cd4921c04ed1dbb05c178f858de91191e6"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v49.1.3/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c9d1ae4330494d6030602bfe2bb70e31cd56b7fea209af09d981b37882cefb01"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/taskcluster/taskcluster/releases/download/v49.1.3/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b066055911dfe49b73173d0e29af6e2a91ffa4c146d4efd380b35089ac8a4d45"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v49.1.3/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "6a61069905fe9ff491ce8970cc34d2bd043bcc20753d6cfa694dd5ab7dd005af"

      def install
        bin.install "taskcluster"
      end
    end
  end

  test do
    system "#{bin}/taskcluster version"
  end
end
