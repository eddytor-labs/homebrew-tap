class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.8.15"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.15/eddytor-2.8.15-aarch64-apple-darwin.tar.gz"
    sha256 "bee7b20bd37d5db0d6cf67981170fa82adafe0c35b510ae9d35e6af7b34465ae"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.15/eddytor-2.8.15-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "19a92ea972d547850f00a5d4cc888c62872318cd7be3226364452d97bd7fffa7"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.15/eddytor-2.8.15-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "32c9a1d34c83dfe510f1c55059e7e6d50fd132b1e5e11d2de4aee6ccb1d30824"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
