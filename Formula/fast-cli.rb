class Luffy < Formula

  desc "cli tool for fast.com"
  homepage "https://github.com/DemonKingSwarn/fast-cli"
  license "GPL-3.0-or-later"

  on_arm do
    url "https://github.com/DemonKingSwarn/fast-cli/releases/download/v0.0.3/fast-cli-darwin-arm64"
    sha256 "d7963b48dd7ce6956d0fe05bcdffa895d49cbb1433fc1da0ab37a0754a7f6230"
  end

  on_intel do
    url "https://github.com/DemonKingSwarn/fast-cli/releases/download/v0.0.3/fast-cli-darwin-amd64"
    sha256 "a7a2d1e37aae9bf1df4b4973c368a72fb9a72c79ec46cb718dbe38ef4e209637"
  end


  def install
    bin.install Dir["fast-cli-darwin-*"].first => "fast-cli"
  end

  test do
    system "#{bin}/fast-cli", "--help"
  end

end
