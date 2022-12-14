class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "v46.1.0"
  license "MPL-2.0"

  if OS.mac?
    if Hardware::CPU.physical_cpu_arm64?
      url "https://github.com/taskcluster/taskcluster/releases/download/#{version}/taskcluster-darwin-arm64", :using => :curl
      sha256 "ed49eccc04b0658eab84ddff47fba0b8f5141611289112035f9e7f5fce537704"
    else
      url "https://github.com/taskcluster/taskcluster/releases/download/#{version}/taskcluster-darwin-amd64", :using => :curl
      sha256 "ba93e5142ec4246eea5265853647f2e13f2838f0e59a5186b735f132b55bbc53"
    end
  elsif OS.linux?
    url "https://github.com/taskcluster/taskcluster/releases/download/#{version}/taskcluster-linux-amd64", :using => :curl
    sha256 "6a782a82adeb382f1539a36125c84e52cdaa7a19aa99d36763f303002829efac"
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
