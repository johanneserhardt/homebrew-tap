class Cxusage < Formula
  desc "Codex CLI usage tracker with live dashboard"
  homepage "https://github.com/johanneserhardt/cxusage"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/johanneserhardt/cxusage/releases/download/v0.1.0/cxusage-darwin-amd64", :using => :nounzip
      sha256 "a01553821759fdf1d7d1936fe6d9777ce1324e961c0b48287bc927886a86a384"
    end
    on_arm do
      url "https://github.com/johanneserhardt/cxusage/releases/download/v0.1.0/cxusage-darwin-arm64", :using => :nounzip
      sha256 "ddd2cb60b5fd3aea7a4744b86836a7321626023bd816a80f16921148e643a33d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/johanneserhardt/cxusage/releases/download/v0.1.0/cxusage-linux-amd64", :using => :nounzip
      sha256 "57f458c5723409faccce4b58d56cc8c9ca7b0743b437e8ea208f3c2fa072d46b"
    end
    on_arm do
      url "https://github.com/johanneserhardt/cxusage/releases/download/v0.1.0/cxusage-linux-arm64", :using => :nounzip
      sha256 "4c4c8640355ba7e1530c090c556a578694ce3e47315d3deb6f89b712996be42a"
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
