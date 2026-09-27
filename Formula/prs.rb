class Prs < Formula
  desc "Superhuman for pull requests: a keyboard-first TUI for reviewing and merging PRs"
  homepage "https://github.com/nandatheguntupalli/prs"
  version "0.8.1"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.8.1/prs-darwin-arm64.tar.gz"
      sha256 "3e6dc5b131914ef57524463c7b6b283c45a414a5c5f0dcaa518c02bd19733cbc"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.8.1/prs-darwin-x64.tar.gz"
      sha256 "1893b802dd4abd8ffc0dc4f7a1b973b2f99ccbab7622d6341399933192e5de35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.8.1/prs-linux-arm64.tar.gz"
      sha256 "75644a431217c23baec253c746a36b7ee9dfb0877c9aacaa63c88d305803085a"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.8.1/prs-linux-x64.tar.gz"
      sha256 "be6c6f3a48b1a489e6db7db09ad5a3674a4d33c53aa01892fbc09a706c050028"
    end
  end

  def install
    bin.install "prs"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/prs --version").strip
  end
end
