class Prs < Formula
  desc "Keyboard-first terminal UI for reviewing and merging pull requests"
  homepage "https://github.com/nandatheguntupalli/prs"
  version "0.11.0"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.11.0/prs-darwin-arm64.tar.gz"
      sha256 "fd3794832e79c46d1a33fee73753d820c60cbd9f5da706435966464b7bf79b43"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.11.0/prs-darwin-x64.tar.gz"
      sha256 "9c03632d3cd6ede95378a0728fa227fc06b59b3528ff6aa28f7b97abd3a31b20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.11.0/prs-linux-arm64.tar.gz"
      sha256 "a5626dbc6df0518dcd43f4bf7f0b46e74a3b3b1400322fce892e09143f712c2f"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.11.0/prs-linux-x64.tar.gz"
      sha256 "4a3294e513503fcca300ff3568cd84e5bd432341e050a34ec3d8c1c59426fb4c"
    end
  end

  def install
    bin.install "prs"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/prs --version").strip
  end
end
