class Prs < Formula
  desc "Superhuman for pull requests: a keyboard-first TUI for reviewing and merging PRs"
  homepage "https://github.com/nandatheguntupalli/prs"
  version "0.10.1"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.10.1/prs-darwin-arm64.tar.gz"
      sha256 "a0791a59e9f674d226711406edb3d18f7ce65276d83428805830be864eed4066"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.10.1/prs-darwin-x64.tar.gz"
      sha256 "09bddeab8e6c300eb3ae1a4817670b354979d6960e8c2c7846c2041938aecc35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.10.1/prs-linux-arm64.tar.gz"
      sha256 "fb0896e5b1b4620ee9021019f88cda7f3c1cc6329e30109cd0f7f91466cc1746"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.10.1/prs-linux-x64.tar.gz"
      sha256 "dfbf1b73d7c88982a4a5c7b1957741892fd5fa5d7f56ac297bf3ae6098023941"
    end
  end

  def install
    bin.install "prs"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/prs --version").strip
  end
end
