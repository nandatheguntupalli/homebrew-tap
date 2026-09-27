class Prs < Formula
  desc "Superhuman for pull requests: a keyboard-first TUI for reviewing and merging PRs"
  homepage "https://github.com/nandatheguntupalli/prs"
  version "0.6.0"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.6.0/prs-darwin-arm64.tar.gz"
      sha256 "4deff57e37fa8b93114d18d1c2880cdeeee37b2f9ca85536371e3aac65415096"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.6.0/prs-darwin-x64.tar.gz"
      sha256 "34a5454bc93152d33f5c311e093c69818c6889d2f2a427dfe3f61696f0ded4c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.6.0/prs-linux-arm64.tar.gz"
      sha256 "c5487de43bba1c4fa71ec0da5f395e8386f39d1a7432dcd9ca2fd621fe1ef726"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.6.0/prs-linux-x64.tar.gz"
      sha256 "de0074dc1d84f1ad112c3c5df172a6622f3815e1b74a728d8e249069b0fa1153"
    end
  end

  def install
    bin.install "prs"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/prs --version").strip
  end
end
