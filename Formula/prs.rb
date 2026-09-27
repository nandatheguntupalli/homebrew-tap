class Prs < Formula
  desc "Keyboard-first terminal UI for reviewing and merging pull requests"
  homepage "https://github.com/nandatheguntupalli/prs"
  version "0.12.0"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.12.0/prs-darwin-arm64.tar.gz"
      sha256 "78cd26bb30973e13e1da1428b75d27c53cc6c1a5efa3bd8fe1bb9cb1fe4ff0b6"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.12.0/prs-darwin-x64.tar.gz"
      sha256 "3b839a3c6f11aa7d64cac797545b20039c89e184d55b8b7072fde80d4d164082"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.12.0/prs-linux-arm64.tar.gz"
      sha256 "f90aed6e8672dca30c30b6d9452ed07a87c5111c5d872f9df281a19bbb7f1b15"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.12.0/prs-linux-x64.tar.gz"
      sha256 "4977de4ca075f4a9b1f844dadf0ef973bcf9d4c6074cf47874b45e10a8eecada"
    end
  end

  def install
    bin.install "prs"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/prs --version").strip
  end
end
