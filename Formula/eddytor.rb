class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "1.3.0"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v1.3.0/eddytor-1.3.0-aarch64-apple-darwin.tar.gz"
    sha256 "82509f0be15127c45080f06dd9e555128471f4b02a90099ca51daa984d6ca7af"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v1.3.0/eddytor-1.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7d2243138935e972b5d65eb0d5f00a37e99c8755d561fb6e868b0a67b3ff3fda"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v1.3.0/eddytor-1.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d2a0aa4a39523347362adbf249efd32a07079ba70f579397c735b2aea75aa16d"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
