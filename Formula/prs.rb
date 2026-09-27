class Prs < Formula
  desc "Superhuman for pull requests: a keyboard-first TUI for reviewing and merging PRs"
  homepage "https://github.com/nandatheguntupalli/prs"
  version "0.7.1"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.7.1/prs-darwin-arm64.tar.gz"
      sha256 "cdc023480b72ef3b214e36f92f371caf6acf030abbcc7cf33594a4a49770e611"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.7.1/prs-darwin-x64.tar.gz"
      sha256 "aad38cd314f3ea967bf89ce255789777142a755583f76ea403e9bbaeceadb004"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.7.1/prs-linux-arm64.tar.gz"
      sha256 "f12299250d85cd19e3358d93340a8c34f0f8992d5c49f315669899a08e952899"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.7.1/prs-linux-x64.tar.gz"
      sha256 "7dcc199efd2ee1c8f9fd0ebe175c80f655ab45ccd3d516086b0c1079e23f549f"
    end
  end

  def install
    bin.install "prs"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/prs --version").strip
  end
end
