class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.9.1"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.9.1/eddytor-2.9.1-aarch64-apple-darwin.tar.gz"
    sha256 "4c824db72d561e756d29d7003cd5da25b3bd72f6dcadf05e1ebb735a252a20b6"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.9.1/eddytor-2.9.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "319e50593793d7aab745538192a7b6f07c91b469302d0e5f27018b8c5df52ada"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.9.1/eddytor-2.9.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "27f4674667ed4d1eca53c01861680973d48d8443fbdb8f66fddb6452a0f7f698"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
