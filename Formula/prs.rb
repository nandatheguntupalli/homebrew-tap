class Prs < Formula
  desc "Superhuman for pull requests: a keyboard-first TUI for reviewing and merging PRs"
  homepage "https://github.com/nandatheguntupalli/prs"
  version "0.1.1"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.1.1/prs-darwin-arm64.tar.gz"
      sha256 "491025374dca5d8dbd1326f80d374f36a5a4af52ed92f0fda1b15628b182152c"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.1.1/prs-darwin-x64.tar.gz"
      sha256 "cd5f4c283eadacaeec5d47709f09a7edfcbcfad8090ecbcee9aa7b32ed48358a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.1.1/prs-linux-arm64.tar.gz"
      sha256 "5207ca8e890274a90bc687f25d59e1dae8fbafa74bcee0607887fe76caaaa12b"
    end
    on_intel do
      url "https://github.com/nandatheguntupalli/prs/releases/download/v0.1.1/prs-linux-x64.tar.gz"
      sha256 "224dbd55581af3f06ae994c012cd25532b854dc502e5676f501d6a4d3d8247dd"
    end
  end

  def install
    bin.install "prs"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/prs --version").strip
  end
end
