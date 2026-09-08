class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.8.11"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.11/eddytor-2.8.11-aarch64-apple-darwin.tar.gz"
    sha256 "a3c6753c5ee6fba59c75c4ea9623a5038be7e3e35c24a5b52ff6eb6793f6fd05"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.11/eddytor-2.8.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c9173e013f9325497eb609b965434d8d2cb97d3d69f429176f695397ccc6f108"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.11/eddytor-2.8.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d1d3b226cb678e41ee748fdf8bb5851c265e8ce09a4389030a58a56cfa97f93"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
