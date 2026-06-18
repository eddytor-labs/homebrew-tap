class Eddytor < Formula
  desc "Eddytor CLI — query, manage, and explore Delta Lake tables"
  homepage "https://eddytor.com"
  version "2.2.1"
  license "Proprietary"

  on_macos do
    url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.2.1/eddytor-2.2.1-aarch64-apple-darwin.tar.gz"
    sha256 "5ca1b22f82181765fbd79a9efd44f1aeeaec667a6d7a0b9e865b4778ac80c271"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.2.1/eddytor-2.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8a59577a1dd3bf211185bb2220d9435b92a1d2a75043bf8c993e67f7612423b8"
    else
      url "https://github.com/eddytor-labs/eddytor-cli/releases/download/v2.2.1/eddytor-2.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9767872dad5cd0e0631bce7a230d6b3c4e734168e5e0797ca3263be96fc856e6"
    end
  end

  def install
    bin.install "eddytor"
  end

  test do
    assert_match "eddytor", shell_output("#{bin}/eddytor --version")
  end
end
