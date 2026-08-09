class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.7.5"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.7.5/eddytor-2.7.5-aarch64-apple-darwin.tar.gz"
    sha256 "c088b686de0b7cbffeb73f3539705966b46dd3d287987b3b543d165ef966aa60"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.7.5/eddytor-2.7.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c722593167037f7a789fb4d651924e765c495e34ba0dd5a91dad3535bada0ff"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.7.5/eddytor-2.7.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3685f46e1e191bd0184880179597e4ed1b0560dc530467c9920b5d6c65aa4b4e"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
