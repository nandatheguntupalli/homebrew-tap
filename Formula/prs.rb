class Prs < Formula
  desc "Superhuman for pull requests: a keyboard-first TUI for reviewing and merging PRs"
  homepage "https://github.com/nandatheguntupalli/prs"
  version "0.5.0"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.5.0/prs-darwin-arm64.tar.gz"
      sha256 "80155af356d920fc1de5714b80ac66dcbb77bde46dbb65d398a646a2b571efd1"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.5.0/prs-darwin-x64.tar.gz"
      sha256 "13260747a53ad69bf0a6853e5bd68f17558684bf522d7245b213631956369322"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.5.0/prs-linux-arm64.tar.gz"
      sha256 "f7d230371c3a227a986714a626c4215dea83b42528b6d69d205d2a614321652a"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.5.0/prs-linux-x64.tar.gz"
      sha256 "f6ffb4523b43c32e2e0cbab86ad9736a9200848e8e8fd340e5e0c08b802daec3"
    end
  end

  def install
    bin.install "prs"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/prs --version").strip
  end
end
