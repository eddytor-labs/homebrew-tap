class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.2.0"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.2.0/eddytor-2.2.0-aarch64-apple-darwin.tar.gz"
    sha256 "12f242a4a0587eb029585b6b6a20616a2b5e7a84b7500437be038dce56d2dcb4"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.2.0/eddytor-2.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7071c3b28d5ed76e1b939d503be5e35393e157db464a375ce0cef08a451a31a9"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.2.0/eddytor-2.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d95d5b2622892c24bdc3fb1ee1932bf0e132a48f2f561151b904d1f63909a34a"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
