class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.7.0"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.7.0/eddytor-2.7.0-aarch64-apple-darwin.tar.gz"
    sha256 "148a1e8b3653bb47eaaec26a51f879da7951e77bf74374fbda88ad34c6044b00"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.7.0/eddytor-2.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8968d0cd3995640e8c1457233207ba2c0a069a8357d727cd60d2c0ee6bb819a5"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.7.0/eddytor-2.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "162f31c141681cd67eb6ff09a15061123c2fd5a474c6ce8c391d48ff10feb57a"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
