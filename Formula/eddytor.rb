class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.8.3"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.3/eddytor-2.8.3-aarch64-apple-darwin.tar.gz"
    sha256 "c5fc3b62ad4e4ccc19dcbbbc7e9e3ea399b12c27616c43c9a0c8984b1947f190"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.3/eddytor-2.8.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "50cf393a7a7a520ca689b0e509df5461f1e25800cdb0ac066c2479c6825e8412"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.3/eddytor-2.8.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "726e29e4548189e8b12681261e6fb6316031aab8cb1c3d97094c32fded3d0805"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
