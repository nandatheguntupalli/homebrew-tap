class Prs < Formula
  desc "Superhuman for pull requests: a keyboard-first TUI for reviewing and merging PRs"
  homepage "https://github.com/nandatheguntupalli/prs"
  version "0.8.0"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.8.0/prs-darwin-arm64.tar.gz"
      sha256 "37a9236a26a9add07215ec782702dea1edc1ea4c785fe48adacd2c5cdb8208d3"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.8.0/prs-darwin-x64.tar.gz"
      sha256 "4fdd0dfccd75572a3e141196ba790d0d94c666e0ab731839ba21aafcae284b56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.8.0/prs-linux-arm64.tar.gz"
      sha256 "6f183028b051ed8ab800ebe8718dd862499e7b4ea99bdb24061182ce8cd6f457"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.8.0/prs-linux-x64.tar.gz"
      sha256 "e5fdd4e1e9fcdca4f7070232dc0d4ba7d2e394b5acb8a0fd330361aff637a996"
    end
  end

  def install
    bin.install "prs"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/prs --version").strip
  end
end
