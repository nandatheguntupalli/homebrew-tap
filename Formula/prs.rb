class Prs < Formula
  desc "Keyboard-first terminal UI for reviewing and merging pull requests"
  homepage "https://github.com/nandatheguntupalli/prs"
  version "0.13.0"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.13.0/prs-darwin-arm64.tar.gz"
      sha256 "1034c26295572b5d32200c69a200e9b1e16a18c7ff2bf03f4a9cee08b82c2d8f"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.13.0/prs-darwin-x64.tar.gz"
      sha256 "61c3cfe3e79053eacf9e126c7a90b19a2ece62444eec5d97daf7433425fa8a6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.13.0/prs-linux-arm64.tar.gz"
      sha256 "0e5ce84b095ebd27fd2c5c1c51314c294b811553cd43294eea1adbc47a0010ff"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.13.0/prs-linux-x64.tar.gz"
      sha256 "769bdddc1ff7211549ff92c26cc1a20a6aec7898dbcc8c6ded4aa66cd08e5869"
    end
  end

  def install
    bin.install "prs"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/prs --version").strip
  end
end
