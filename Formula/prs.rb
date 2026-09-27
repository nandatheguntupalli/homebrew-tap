class Prs < Formula
  desc "Superhuman for pull requests: a keyboard-first TUI for reviewing and merging PRs"
  homepage "https://github.com/nandatheguntupalli/prs"
  version "0.8.2"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.8.2/prs-darwin-arm64.tar.gz"
      sha256 "78899f2875e3f598c7786019138df3592b945d55e0fea7238125a48765488a6e"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.8.2/prs-darwin-x64.tar.gz"
      sha256 "f12a07232c84ddb8698ba777c88497d05a93bd043e15f32a32e64164cd3c8a17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.8.2/prs-linux-arm64.tar.gz"
      sha256 "faa9ea8c330ae13428102246cefdb8510198e4b9255d26f837b0d70d45a132c3"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.8.2/prs-linux-x64.tar.gz"
      sha256 "e3333afaf74f1ea4a09283d2b9f82cdaa75706144ecf94f411577bc9462de40c"
    end
  end

  def install
    bin.install "prs"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/prs --version").strip
  end
end
