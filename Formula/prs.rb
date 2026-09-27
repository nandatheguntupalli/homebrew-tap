class Prs < Formula
  desc "Superhuman for pull requests: a keyboard-first TUI for reviewing and merging PRs"
  homepage "https://github.com/nandatheguntupalli/prs"
  version "0.10.2"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.10.2/prs-darwin-arm64.tar.gz"
      sha256 "d9fa6dd36c879c752a7395c7031427367019df2e9cf9595546c9bc8307c6d2f2"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.10.2/prs-darwin-x64.tar.gz"
      sha256 "488c7c40206f09c342bb533cbbb29e5d6d4b5114c9b66428f5103e2a12dc5d05"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.10.2/prs-linux-arm64.tar.gz"
      sha256 "d5d0a5d562e642cbf6ecfaaa8ddd0c0ddfd720f73c81296c5ec586a71c48f767"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.10.2/prs-linux-x64.tar.gz"
      sha256 "770cc766380b72371e42b2c33061135db89d2e3e02a2f038d938df9b68077f19"
    end
  end

  def install
    bin.install "prs"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/prs --version").strip
  end
end
