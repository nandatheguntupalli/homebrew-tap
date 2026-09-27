class Prs < Formula
  desc "Superhuman for pull requests: a keyboard-first TUI for reviewing and merging PRs"
  homepage "https://github.com/nandatheguntupalli/prs"
  version "0.7.0"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.7.0/prs-darwin-arm64.tar.gz"
      sha256 "2fa79f0bdae667565c6c3c10b6c28e36019a45a9090121928b51f26dbe57838f"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.7.0/prs-darwin-x64.tar.gz"
      sha256 "e847c369934e6f2f15658ed460a32c60b7ac7af836ccfae1585b82692af8ed00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.7.0/prs-linux-arm64.tar.gz"
      sha256 "cf3d1546155ade4442dc27acdd7d8cf5238dbf3e430050dddda8f1e0575070ee"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.7.0/prs-linux-x64.tar.gz"
      sha256 "0374ed1b09bf247f3e732d80b1ae5945089e4dcd9d1a9a7988a9c5259cf5190d"
    end
  end

  def install
    bin.install "prs"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/prs --version").strip
  end
end
