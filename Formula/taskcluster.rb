# frozen_string_literal: true

# Homebrew formula for taskcluster CLI
class Taskcluster < Formula
  desc "Client library for the Taskcluster CLI"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "44.23.4"
  license "MPL-2.0"

  if OS.mac?
    if Hardware::CPU.physical_cpu_arm64?
      url "https://github.com/taskcluster/taskcluster/releases/download/v#{version}/taskcluster-darwin-arm64"
      sha256 "fe1ae43849952a5797edcad202b12ca138498c8530057ec6e2add3c78f1ddee4"
    else
      url "https://github.com/taskcluster/taskcluster/releases/download/v#{version}/taskcluster-darwin-amd64"
      sha256 "c8c613d722122cce47a8df2189f5e278211ec71ad093533d363c88161d60f2e8"
    end
  elsif OS.linux?
    url "https://github.com/taskcluster/taskcluster/releases/download/v#{version}/taskcluster-linux-amd64"
    sha256 "618203d0fe3d6938b635b4d89d39507f608db5027fda55ebcabf251a1da0fa39"
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
    system "#{bin}/taskcluster", "--help"
  end
end
