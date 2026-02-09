class Luffy < Formula

  desc "Stream and browse movies and shows directly from your terminal"
  homepage "https://github.com/DemonKingSwarn/luffy"
  license "GPL-3.0-or-later"

  depends_on "chafa"
  depends_on "libsixel"
  depends_on "fzf"
  depends_on "yt-dlp"

  def caveats
   <<~EOS
     ⚠️IINA is required for playback on macOS.
     Install it manually:
       brew install --cask iina
   EOS
  end

  on_arm do
    url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.0.14/luffy-macos-arm64"
    sha256 "ba769fac3d78cb9ea007e67dab48ad9e0e20a1bf1c72e407d80d1c4bfebe77ca"
  end

  on_intel do
    url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.0.14/luffy-macos-amd64"
    sha256 "f838a9594dc509338f7944d2853a38b3bce71da1d101b6ebd098797dc973586b"
  end


  def install
    bin.install Dir["luffy-macos-*"].first => "luffy"
  end

  test do
    system "#{bin}/luffy", "--version"
  end

end
