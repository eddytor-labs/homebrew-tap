class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.7.6"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.7.6/eddytor-2.7.6-aarch64-apple-darwin.tar.gz"
    sha256 "f15baebdc025b557f82d45ca8d3722f7825cb33f8fdd49ad4d2528ed8718af11"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.7.6/eddytor-2.7.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "683c9771d5c811bbaa4fe9fdca0f514a7a0da30200618e77443ae69e4729a64e"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.7.6/eddytor-2.7.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e49eef736048afa5f294e8db4110fc3588d855e3d0571306a246297d11c7f8ca"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
