class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "v44.17.2"
  license "MPL-2.0"

  if OS.mac?
    if Hardware::CPU.physical_cpu_arm64?
      url "https://github.com/taskcluster/taskcluster/releases/download/#{version}/taskcluster-darwin-arm64", :using => :curl
      sha256 "1ccf56972988f45c88e9a21a536728f1064eabef49a9d085e16ac41db14214a5"
    else
      url "https://github.com/taskcluster/taskcluster/releases/download/#{version}/taskcluster-darwin-amd64", :using => :curl
      sha256 "7897baf6c27350e5a6fe46e93f9bb4890f5dd98a117196acfb4267e639624a5c"
    end
  elsif OS.linux?
    url "https://github.com/taskcluster/taskcluster/releases/download/#{version}/taskcluster-linux-amd64", :using => :curl
    sha256 "d12b40c048e96bd5376f9d28c4831075ee6b74b3c8b9bd3d85f57cc1a9ec1971"
  end

  def install
    if OS.mac?
      if Hardware::CPU.physical_cpu_arm64?
        bin.install "taskcluster-darwin-arm64" => "taskcluster"
      else
        bin.install "taskcluster-darwin-amd64" => "taskcluster"
      end
    elsif OS.linux?
      bin.install "taskcluster-linux-amd64" => "taskcluster"
    end
  end

  test do
    system "#{bin}/taskcluster --help"
  end
end
