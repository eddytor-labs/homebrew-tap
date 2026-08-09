class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.7.4"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.7.4/eddytor-2.7.4-aarch64-apple-darwin.tar.gz"
    sha256 "b272c3084a800ca37f0dba4d366283bb0178b11e5c3cd92a26912f8f24708a44"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.7.4/eddytor-2.7.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "262d4642f6bbe3dbbf404e7ad6314501d284500869f57454245c2f3979a9a4a2"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.7.4/eddytor-2.7.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d43e220d79d5c7e642d08d6d0ab90fe1152420005400d3d02d725f43e23d2bc7"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
