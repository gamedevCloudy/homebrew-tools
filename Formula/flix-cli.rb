class FlixCli < Formula
  desc "Stream and browse movies and shows directly from your terminal"
  homepage "https://github.com/DemonKingSwarn/flix-cli"
  url "https://files.pythonhosted.org/packages/1b/8e/bd0116b54a217d4279cb6b5dd234af8a8aead18eb0f7ee0be2e076980737/flix_cli-1.8.0-py3-none-any.whl"
  sha256 "31ff53676ea533f41e639ff2e96a6cf922c0e80a9f8c202d26c03d1e4886fb78"
  license "GPLv3"

  depends_on "python@3.12"
  depends_on "ffmpeg"
  depends_on "iina"

  def install
    system "pip3", "install", "--upgrade", "pip"
    system "pip3", "install","--prefix=#{prefix}", "flix-cli"
  end
end
