class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.10.0"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.10.0/eddytor-2.10.0-aarch64-apple-darwin.tar.gz"
    sha256 "3b3a0da99ce01d5849309edbc12c3606bb9de7f4b0cdc1dcd166385b354cc220"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.10.0/eddytor-2.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8269c526bbcd88b691aa7a97d91acecc207993b08fbcfcee83efb8d5ea4ffe9f"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.10.0/eddytor-2.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5be69d37e63254a4f2faa3fc20495b513e656c0cf2270c1ee3c576f452c9ba0e"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
