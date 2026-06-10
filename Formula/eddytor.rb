class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.0.0"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.0.0/eddytor-2.0.0-aarch64-apple-darwin.tar.gz"
    sha256 "68b28bdab1ca58b15ceb0ed3d57a57f1f041e309b23ae05a855fbd238954b82f"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.0.0/eddytor-2.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b06711a0ddf2d484fe2c25a5a58f9c6d35422e2018cab1c32ac70c32776dd22c"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.0.0/eddytor-2.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8da09d68ead387562d8dbbcabcb37d362b2a02be51efad57d3938b61cccd72a6"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
