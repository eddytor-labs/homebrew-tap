class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.8.5"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.5/eddytor-2.8.5-aarch64-apple-darwin.tar.gz"
    sha256 "45c6f72caa616cfd29fd992bb1c0e445f3b70164c42a09f7c74b8086124da05f"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.5/eddytor-2.8.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8852b3771f9598afb9d475fd60ddd77035c669a916283c0e6b637a0b9b309e75"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.5/eddytor-2.8.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b0a60be5449a411ccab3ff9fc092326fe0d2aa1976cdc8cdc2b1c040d28dd241"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
