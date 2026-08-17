class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.8.0"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.0/eddytor-2.8.0-aarch64-apple-darwin.tar.gz"
    sha256 "e9272dd7e371f2b0b7d2af6c6c88cf80597b3df57b453891fa5e6931fbbc32c1"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.0/eddytor-2.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "53f334aab7e4b9c606254a5b53265b7f2c97f3b4069a53b2185a01b3ca1bb1da"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.0/eddytor-2.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b5280e83c07847105d994aced891feedabac269a6ec850f7700c545a74963b1b"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
