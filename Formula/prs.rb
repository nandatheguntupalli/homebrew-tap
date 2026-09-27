class Prs < Formula
  desc "Superhuman for pull requests: a keyboard-first TUI for reviewing and merging PRs"
  homepage "https://github.com/nandatheguntupalli/prs"
  version "0.2.0"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.2.0/prs-darwin-arm64.tar.gz"
      sha256 "5d7d878d4456a45f0a3b6b6cac6608779a09bd427f564c47757e36cc386e1159"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.2.0/prs-darwin-x64.tar.gz"
      sha256 "b48fe9ccfde52deaac0f4cfe53ca472996e034dfc796e225c46c6a72adf28c37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.2.0/prs-linux-arm64.tar.gz"
      sha256 "9a1994a150dcd592d2e40e8d06e5f5f92efa44424d5c1f7df3a5e5719d17b117"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.2.0/prs-linux-x64.tar.gz"
      sha256 "8e47c0f94875e808b47265caa103b216f354ee6cd732852f2b0aefcfd06d5830"
    end
  end

  def install
    bin.install "prs"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/prs --version").strip
  end
end
