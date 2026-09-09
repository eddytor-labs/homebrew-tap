class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.8.13"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.13/eddytor-2.8.13-aarch64-apple-darwin.tar.gz"
    sha256 "9756f08bf2a28d0378ce6846a69681502ea9b5b8331bf4c7bf8a40f531525601"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.13/eddytor-2.8.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7b754b36a76e798e56f1cee6a5e52247b0bc27cd6fddc00e41641c92ae51a2eb"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.13/eddytor-2.8.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8554160c8827d8fe08cba1873b008c4f07e22730bfd13405da67164c44501165"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
