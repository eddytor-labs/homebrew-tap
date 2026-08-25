class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.8.7"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.7/eddytor-2.8.7-aarch64-apple-darwin.tar.gz"
    sha256 "4766502ebf17361b0f8219b8240945c051ad11abad7495f12328f389bb2e94f3"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.7/eddytor-2.8.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b52ec67140d3cf8e3a815e0313d46b25b60c4a8450afed4ce0643ad651a8f90f"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.7/eddytor-2.8.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eaa761f1c3bc00ec858eb72a81503a40f39a51600e4dadc8b68a30daf34f0900"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
