class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.8.9"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.9/eddytor-2.8.9-aarch64-apple-darwin.tar.gz"
    sha256 "3868a0c99985414782ce6a0dbdd029ee1a74e670085f71c4695fe32129204847"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.9/eddytor-2.8.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c5d661261e2bec213733eee771ed658b6da1945bc7b49590f3d85d1e91e9d16d"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.9/eddytor-2.8.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c1e33738905ce01299568a4ec6b1df182586c2f80a775a677a6c80ec02b7617b"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
