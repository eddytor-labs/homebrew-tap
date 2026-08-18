class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.8.1"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.1/eddytor-2.8.1-aarch64-apple-darwin.tar.gz"
    sha256 "9b539905c5ead796aeca8b07d7051daecb898d0102b9861241edea96fdfb2998"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.1/eddytor-2.8.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ed909f8dfe1cad394055db1b6095ad72fa55be0669398ad2b1df112b2eaa6ceb"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.1/eddytor-2.8.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e4d31cfec6d80077e1367873866ae8d09d1344cf642d271abf186e5f5c817f6"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
