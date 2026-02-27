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
    url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.1.0/luffy-darwin-arm64"
    sha256 "90b7f50e979fc97315e3a3b4ca303406aad6312117c9df50ea14c06cfc3d081a"
  end

  on_intel do
    url "https://github.com/DemonKingSwarn/luffy/releases/download/v1.1.0/luffy-darwin-amd64"
    sha256 "1435520bd6963b9bd160797b9815c11350af4e976fb37ef3d9b5d5dd80eb7b60"
  end


  def install
    bin.install Dir["luffy-darwin-*"].first => "luffy"
  end

  test do
    system "#{bin}/luffy", "--version"
  end

end
