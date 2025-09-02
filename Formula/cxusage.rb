class Cxusage < Formula
  desc "Codex CLI usage tracker with live dashboard"
  homepage "https://github.com/johanneserhardt/cxusage"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/johanneserhardt/cxusage/releases/download/v0.1.0/cxusage-darwin-amd64", :using => :nounzip
      sha256 "93b75f86d18d7c2c9417c49ec9d8ba7bcb66edf82c2142c9b84aa06e337f7349"
    end
    on_arm do
      url "https://github.com/johanneserhardt/cxusage/releases/download/v0.1.0/cxusage-darwin-arm64", :using => :nounzip
      sha256 "ce8dcbf3ecc8ddb0f0adb2e56fe175af5fe0a895bd43e43b38a23d40e1af634e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/johanneserhardt/cxusage/releases/download/v0.1.0/cxusage-linux-amd64", :using => :nounzip
      sha256 "4da6ad59af7c5c9d4f6899c39aa4d3dcfd0586743a3133d34ca684fde8a94565"
    end
    on_arm do
      url "https://github.com/johanneserhardt/cxusage/releases/download/v0.1.0/cxusage-linux-arm64", :using => :nounzip
      sha256 "f597e82b55e2c09d12ac7bb055067a5851c165fb54879dd5fa2ac3b373300bda"
    end
  end

  def install
    bin.install Dir["cxusage-*"][0] => "cxusage"
    bin.install_symlink bin/"cxusage" => "cx"
  end

  test do
    system "#{bin}/cxusage", "version"
  end
end
