class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.8.10"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.10/eddytor-2.8.10-aarch64-apple-darwin.tar.gz"
    sha256 "7cf57bfd37d54d6b4d3f76a8c5d8e3bfdfad72ec3fbe8039f988dc36f4631ca9"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.10/eddytor-2.8.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "78c6fdb41eae08a3df94ecfe18f65191ddb66b00e4d6edb61cf7123579c84773"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.10/eddytor-2.8.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "105fcee3c546a4207dc00e046f47bcd23f6b1e65c57df0ef14845c9202b87027"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
