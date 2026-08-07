class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.7.2"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.7.2/eddytor-2.7.2-aarch64-apple-darwin.tar.gz"
    sha256 "563e9a7a175b12b96a0fd707d4ae152811955799bda7d5f834e1f129ec382c22"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.7.2/eddytor-2.7.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "90037f93afbdbe4551419d024afce4926f0440eecb7416bf6989ff02fdd5d6d6"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.7.2/eddytor-2.7.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a32dbf2e1c911dd9c305afb21b213ac30e9215de9791359367bcfba93b2a39ba"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
