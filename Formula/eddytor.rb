class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.7.3"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.7.3/eddytor-2.7.3-aarch64-apple-darwin.tar.gz"
    sha256 "b0a72c1ff2bc582c584dd1b5857e33486da70b271b98868429a3bf584a9734d7"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.7.3/eddytor-2.7.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ad2c22a2ad43ead102c6d9018a2d8c809b0ab68a562e0c1111d501ca0c960cc4"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.7.3/eddytor-2.7.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ee91b7379826c757f042c9f20bad584c95f85a93c31cbf4bb1f24ee7037b8872"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
