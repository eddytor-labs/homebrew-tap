class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.1.1"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.1.1/eddytor-2.1.1-aarch64-apple-darwin.tar.gz"
    sha256 "5a4181b73df6de9d7553a7e043bb81f79b64c90dce538a8107a7bcab4008f0fd"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.1.1/eddytor-2.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "991275545d181f8fa90f1826adfd51aa085f660b9c5fdd187f7ef06b088079a1"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.1.1/eddytor-2.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2838e0398e1730b866c012a9f6ba7f60102264b2c795c4607182ccc8e27109b3"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
