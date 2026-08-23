class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.8.6"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.6/eddytor-2.8.6-aarch64-apple-darwin.tar.gz"
    sha256 "87061cd9845b5619d25f8ce54b979f9e3e9fe8c2b46955780f192e0099eb7d9a"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.6/eddytor-2.8.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f134f381ad08988ac21a4ed1076c570ff748a1e2902971d612fd85be16a6e133"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.6/eddytor-2.8.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3f7d160a4bca760e91e41523add1db67d6d6306ee30bd4c15b9a72d4097298ae"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
