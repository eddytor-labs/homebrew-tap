class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.8.2"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.2/eddytor-2.8.2-aarch64-apple-darwin.tar.gz"
    sha256 "c7d8cee9e71457820ff7e9ff552f722d431154f55055a1861f1c580d9babc9ba"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.2/eddytor-2.8.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "28040456c94894785acdbca629f84dc354241ce7f805bba98262777e20ce2f5c"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.2/eddytor-2.8.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a84277aec9bc9af8fda7f972d0e6144032b88655af6c1c34872e7138e69bd412"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
