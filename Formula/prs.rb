class Prs < Formula
  desc "Superhuman for pull requests: a keyboard-first TUI for reviewing and merging PRs"
  homepage "https://github.com/nandatheguntupalli/prs"
  version "0.9.0"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.9.0/prs-darwin-arm64.tar.gz"
      sha256 "bc8323f05dcf1d996c1f06c688ab665cceed25c1ac315103a2311b4fdfcba417"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.9.0/prs-darwin-x64.tar.gz"
      sha256 "a5564cf073e394810114ccd043c9263df0b542e8f28e012fbf2df71152b499bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.9.0/prs-linux-arm64.tar.gz"
      sha256 "c53e9b11e867aac370c0cecdc98b8bc6cbfce9cd87edc41b8678c5e0d1497ec4"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.9.0/prs-linux-x64.tar.gz"
      sha256 "fe57abec49c626ea39c52b4e42dad03473a7c924191117575edd88d7b3b5aa15"
    end
  end

  def install
    bin.install "prs"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/prs --version").strip
  end
end
