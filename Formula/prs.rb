class Prs < Formula
  desc "Superhuman for pull requests: a keyboard-first TUI for reviewing and merging PRs"
  homepage "https://github.com/nandatheguntupalli/prs"
  version "0.10.3"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.10.3/prs-darwin-arm64.tar.gz"
      sha256 "32d7b6c181eb076d30c153857dfdc9645a6280e4391b207cc430a0a8e5b2c8da"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.10.3/prs-darwin-x64.tar.gz"
      sha256 "d6572b164069bc9ea1df5fc0a4bb8f43cde8260700d7d931fc956025ec4bb964"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.10.3/prs-linux-arm64.tar.gz"
      sha256 "867660dd08cc9576a1e87a0bb24267934bda82acf0ea519f2628c740fbbb623b"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.10.3/prs-linux-x64.tar.gz"
      sha256 "c99f8c6d54227d9d962a6f2d342cc4a18bf27c56f9e0b3ef06444c7e8910f601"
    end
  end

  def install
    bin.install "prs"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/prs --version").strip
  end
end
