class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.8.4"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.4/eddytor-2.8.4-aarch64-apple-darwin.tar.gz"
    sha256 "6b9b9a242db961bd7128f91b624d5922d2fb4aa3acd3fcff2bf73c0d6931a9dc"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.4/eddytor-2.8.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "10c558dbb0826ee562a163fe2657ae1790995c7a52948d5532d4f6aaefa4433b"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.4/eddytor-2.8.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0c52d3e7373898881aaf1660223c55eff6c156a0e38d09fee47dc7a0e496e120"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
