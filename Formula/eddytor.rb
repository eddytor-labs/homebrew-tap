class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.8.8"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.8/eddytor-2.8.8-aarch64-apple-darwin.tar.gz"
    sha256 "4e3ee2152f5de02a211ee7e271dc7a3f85c8e9962c76f0462948ff2ebb9b40f3"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.8/eddytor-2.8.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e5a733784d366144d10496245ec27b472d643a13ca375ff090568acba640d687"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.8/eddytor-2.8.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff814244419bdf6bece71aecd7f44db070628122e91fa27bac7a2d7471eee949"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
