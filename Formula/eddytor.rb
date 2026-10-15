class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.9.0"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.9.0/eddytor-2.9.0-aarch64-apple-darwin.tar.gz"
    sha256 "3b5c7ad310d21884e789e9aae6841237842fc59f1318d8242ab4ec558a18b8a4"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.9.0/eddytor-2.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9792f115cbe00dde1e98cc71b6eec61b5f360bc212208394588a704cd620a2cb"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.9.0/eddytor-2.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2c3303a93a312b6b488f63b6c256a3bde21d7f4a1287bafb8bc925cf46531466"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
