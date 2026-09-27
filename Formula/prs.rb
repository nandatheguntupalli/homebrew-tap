class Prs < Formula
  desc "Keyboard-first terminal UI for reviewing and merging pull requests"
  homepage "https://github.com/nandatheguntupalli/prs"
  version "0.12.1"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.12.1/prs-darwin-arm64.tar.gz"
      sha256 "e57dbcaf3bb3111437f0673e2598d169940cd5307f7f904bdf402de79accf787"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.12.1/prs-darwin-x64.tar.gz"
      sha256 "3b34a0ab8710525e3e65fdead3cc0cdd78c3f1215cc69d03564a2287209adf24"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.12.1/prs-linux-arm64.tar.gz"
      sha256 "34de0e5020411c74ffeab844fb3373c0021fbb60cd9353cacc6d736f3832cb90"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.12.1/prs-linux-x64.tar.gz"
      sha256 "4d57a68b6b41e0c008310f111285a74f9dbcf798f29d187a5d3ba5393514930b"
    end
  end

  def install
    bin.install "prs"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/prs --version").strip
  end
end
