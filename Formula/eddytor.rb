class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "1.3.1"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v1.3.1/eddytor-1.3.1-aarch64-apple-darwin.tar.gz"
    sha256 "0af594bc48e10fbcc0ec98ca387eb9ab363db1ac6dd03038b26df6265f25e35f"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v1.3.1/eddytor-1.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "54e0769f654dbad9816b35d0d6c3afce48407b1a83136176e8ee411848a4e461"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v1.3.1/eddytor-1.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f121462d7290dce085578a82004c283cce86ea532967c05f2d6b9b070106af90"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
