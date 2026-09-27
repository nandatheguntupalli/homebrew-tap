class Prs < Formula
  desc "Superhuman for pull requests: a keyboard-first TUI for reviewing and merging PRs"
  homepage "https://github.com/nandatheguntupalli/prs"
  version "0.3.0"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.3.0/prs-darwin-arm64.tar.gz"
      sha256 "d11a1321a706c528f4170500b5272ed53d4edbc1240372f6344ace6dc4d9981c"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.3.0/prs-darwin-x64.tar.gz"
      sha256 "b6f9647871216f5483c51577556a4403c6832ff66e0dbf74be8059118bd008d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.3.0/prs-linux-arm64.tar.gz"
      sha256 "859384bd5118e475bcf75a7df5250bcda34fb31960f0d24551c37a5c5e43218d"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.3.0/prs-linux-x64.tar.gz"
      sha256 "dbf19f834ab6795587ae4335e2cb7a1b41c59454149eded4ca36c0e05c7baed9"
    end
  end

  def install
    bin.install "prs"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/prs --version").strip
  end
end
