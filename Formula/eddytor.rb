class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.8.12"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.12/eddytor-2.8.12-aarch64-apple-darwin.tar.gz"
    sha256 "162b1f9096cdee8b62fe75d4eac897b25f3616b6edd3f06cfd6fff569bae8e93"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.12/eddytor-2.8.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "02f947b33939d6776ae3c8507ed72c941dc71590112187d23fd4180c91fb7bab"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.8.12/eddytor-2.8.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a091a43954bd0b38705cfbc77f23879c01bf56ad1ce396ad91e2b938e25d5772"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
