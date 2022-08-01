class Taskcluster < Formula
  desc "CI for Engineers"
  homepage "https://taskcluster.net"
  version "v44.17.2"
  license "MPL-2.0"

  if Hardware::CPU.physical_cpu_arm64?
    url "https://github.com/taskcluster/taskcluster/releases/download/#{version}/taskcluster-darwin-arm64", :using => :curl
    sha256 "1ccf56972988f45c88e9a21a536728f1064eabef49a9d085e16ac41db14214a5"
  else
    url "https://github.com/taskcluster/taskcluster/releases/download/#{version}/taskcluster-darwin-amd64", :using => :curl
    sha256 "7897baf6c27350e5a6fe46e93f9bb4890f5dd98a117196acfb4267e639624a5c"
  end

  def install
    if Hardware::CPU.physical_cpu_arm64?
      bin.install "taskcluster-darwin-arm64" => "taskcluster"
    else
      bin.install "taskcluster-darwin-amd64" => "taskcluster"
    end
  end

  test do
    system "#{bin}/taskcluster --help"
  end
end
