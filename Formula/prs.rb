class Prs < Formula
  desc "Keyboard-first terminal UI for reviewing and merging pull requests"
  homepage "https://github.com/nandatheguntupalli/prs"
  version "0.14.0"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.14.0/prs-darwin-arm64.tar.gz"
      sha256 "3c9d2bf114c5f145b33c63aba46de0b1bb7f9857d6af73ed17f077e01330d750"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.14.0/prs-darwin-x64.tar.gz"
      sha256 "6d182f97e9c97f702914952a1006e6dc44e48393853b4f40b1771a6b35298afe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.14.0/prs-linux-arm64.tar.gz"
      sha256 "7d08e3cfc61d68f1b7dfc4b810ccc8f48f0056f57ad5849092437ce2a5b81bed"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.14.0/prs-linux-x64.tar.gz"
      sha256 "ee9f7b538c50997926def414b546915da7715431996b4c5bafebdfd3979ac1cf"
    end
  end

  def install
    bin.install "prs"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/prs --version").strip
  end
end
