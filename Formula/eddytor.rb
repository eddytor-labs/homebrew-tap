class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.8.14"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.14/eddytor-2.8.14-aarch64-apple-darwin.tar.gz"
    sha256 "66c45912c5576afd539af6c704242bc17b9e23b98414c7b73e22dc78bda23a73"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.14/eddytor-2.8.14-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d6be3275b06b840ab6e25d611b7310f3b3a978d48ed30bb23765041e1defa4ce"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.14/eddytor-2.8.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f3062f37c79d22ad2124caef87dd4637cb34be9e8bab89fde43ada4944ebd110"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
