class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.1.0"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.1.0/eddytor-2.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "1859876aec5415306cd544ce0715a76a327adc5a7c686a0756f7876c2582938f"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.1.0/eddytor-2.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bb2c44fabff9b4e9f47f8d6461b1f46a10c7523e1f2afb3b4fc27ea8b92ab4d7"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.1.0/eddytor-2.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c891845843a110361121b92372debb4eb4f11b76831d887da5e518d5882958a"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
