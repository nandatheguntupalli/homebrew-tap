class Prs < Formula
  desc "Superhuman for pull requests: a keyboard-first TUI for reviewing and merging PRs"
  homepage "https://github.com/nandatheguntupalli/prs"
  version "0.1.0"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.1.0/prs-darwin-arm64.tar.gz"
      sha256 "5be159ceeb8742fdda97e464beb8925371613ca4f9eaae8a87b92d80c140d009"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.1.0/prs-darwin-x64.tar.gz"
      sha256 "be1bd63e67af3e6e8e79208e0eb7d94872075f19cefa095e19e3e4bb55b1b582"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.1.0/prs-linux-arm64.tar.gz"
      sha256 "d8bb7da02e29cf5de6f90b9618de4ee0b35a4f7a7bc8674ecdcefd5aa44f478d"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.1.0/prs-linux-x64.tar.gz"
      sha256 "236b55c8f3fa563c92fe3b388b7b6f191c2f58374929e1a1859616b325fc7fcb"
    end
  end

  def install
    bin.install "prs"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/prs --version").strip
  end
end
