class Prs < Formula
  desc "Keyboard-first terminal UI for reviewing and merging pull requests"
  homepage "https://github.com/nandatheguntupalli/prs"
  version "0.15.0"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.15.0/prs-darwin-arm64.tar.gz"
      sha256 "77521da2d5d2f26362b3fdfc7351c10328e22a72b5e84fc469df9d8bcb419bd4"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.15.0/prs-darwin-x64.tar.gz"
      sha256 "99e677a323d256f2b30f1e274341aed710a4bf1d8a324389c1e50308bc20a486"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.15.0/prs-linux-arm64.tar.gz"
      sha256 "3be02a5edebb0d8982eff313e6c4ca2d12984782e26462fcb032247caf23fc52"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.15.0/prs-linux-x64.tar.gz"
      sha256 "17c4f9215c798abbbf46513821acc3799f1e4e100e02e46ffec23cd114b37bcd"
    end
  end

  def install
    bin.install "prs"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/prs --version").strip
  end
end
