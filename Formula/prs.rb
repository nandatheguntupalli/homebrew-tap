class Prs < Formula
  desc "Superhuman for pull requests: a keyboard-first TUI for reviewing and merging PRs"
  homepage "https://github.com/nandatheguntupalli/prs"
  version "0.10.0"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.10.0/prs-darwin-arm64.tar.gz"
      sha256 "5bfde372d628d0fb0a232368dcd06466893bcca23ca0a2c07d7cd3962d6228f7"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.10.0/prs-darwin-x64.tar.gz"
      sha256 "45b9bc16d2c3edc281f2251a37898b5e8770b1a83772557c6f7623e37efaee34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.10.0/prs-linux-arm64.tar.gz"
      sha256 "6f93e36fed3019b2cd0f910339b2dd2fa0176e252bf8c7270fe5c04d82071b6b"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.10.0/prs-linux-x64.tar.gz"
      sha256 "f8ba11e3435e947b499269da3edd528a9dad3dbcd118a3d4b417db7e0ef39d21"
    end
  end

  def install
    bin.install "prs"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/prs --version").strip
  end
end
