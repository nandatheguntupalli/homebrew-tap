class Prs < Formula
  desc "Superhuman for pull requests: a keyboard-first TUI for reviewing and merging PRs"
  homepage "https://github.com/nandatheguntupalli/prs"
  version "0.4.0"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.4.0/prs-darwin-arm64.tar.gz"
      sha256 "056e5f11ca25266fecac43adcdefc10097913681bff0adcf6d7b921959c3643b"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.4.0/prs-darwin-x64.tar.gz"
      sha256 "d459f446dbb393efb0be04675a207d0f93d5fc99608aa578bd3fcd3b0e374da1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.4.0/prs-linux-arm64.tar.gz"
      sha256 "47e240214142de24ac4cc3b369748848b999395bf2e893668373cc5a662ca423"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.4.0/prs-linux-x64.tar.gz"
      sha256 "81597820ec4fa814e88e0c16209d8dd68ae6baed4c8dcf429e8f4002de3244d0"
    end
  end

  def install
    bin.install "prs"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/prs --version").strip
  end
end
