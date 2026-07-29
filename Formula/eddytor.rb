class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.6.0"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.6.0/eddytor-2.6.0-aarch64-apple-darwin.tar.gz"
    sha256 "fe9e6eb9eeefac8bf8a0fb85548cc44c505e68f4ffd9bb1736910632290ccaf1"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.6.0/eddytor-2.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5499eda1879aab2803fc539dbed72aa4fd522e68b63287cb0b182b179d91b724"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.6.0/eddytor-2.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "80fcd95c20fe3d64cee46ef0021fbd2090ef931969fb15473ec939e5b5928e9a"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
