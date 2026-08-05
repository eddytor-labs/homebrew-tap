class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.7.1"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.7.1/eddytor-2.7.1-aarch64-apple-darwin.tar.gz"
    sha256 "405e872807b751427dd660281d05a7d5d333cfc634d079a74cf70646cff11756"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.7.1/eddytor-2.7.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9ad2a45926a960d734ab348e5ffaf40c5fb5468d53b3ae263d549fb95c100558"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.7.1/eddytor-2.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f359b8ec82b83364f5b87b42d480bab775f8f894b721d43c60de3fe7dcfdeb99"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
