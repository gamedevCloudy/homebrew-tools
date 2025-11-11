class FlixCli < Formula
  include Language::Python::Virtualenv

  desc "Stream and browse movies and shows directly from your terminal"
  homepage "https://github.com/DemonKingSwarn/flix-cli"
  url "https://files.pythonhosted.org/packages/97/bd/4321a44c5b67e9cfe3649b97bc932e646ceb16d12e61aed57291599c69a0/flix_cli-1.8.0.tar.gz"
  sha256 "014fa0ab2f47ddbb1af466a91dba2c056e37187a2750028ce3f9019cd19961fe"
  license "GPL-3.0-or-later"

  depends_on "python@3.12"
  depends_on "ffmpeg"
  depends_on "fzf"
  depends_on "yt-dlp"

  on_linux do 
    depends_on "mpv"
  end

  on_macos do
    def caveats
      <<~EOS
        ⚠️IINA is required for playback on macOS.
        Install it manually:
          brew install --cask iina
      EOS
    end
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/2a/39/e50c7c3a983047577ee07d2a9e53faf5a69493943ec3f6a384bdc792deb2/httpx-0.28.1-py3-none-any.whl"
    sha256 "d909fcccc110f8c7faf814ca82a9a4d816bc5a6dbfea25d6591d6985b8ba59ad"
  end

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/94/fe/3aed5d0be4d404d12d36ab97e2f1791424d9ca39c2f754a6285d59a3b01d/beautifulsoup4-4.14.2-py3-none-any.whl"
    sha256 "5ef6fa3a8cbece8488d66985560f97ed091e22bbc4e9c2338508a9d5de6d4515"
  end

  resource "catt" do 
    url "https://files.pythonhosted.org/packages/a1/36/b7498a1d973d886fb2d16dc28a41c8ca7028a5177ec8e458c4ed75977f3b/catt-0.13.1-py3-none-any.whl"
    sha256 "e906421d9115ad1c5df2d3f5e86d38ffcd129565b48179bca2a2335f51a3dc18"
  end

  resource "krfzf-py" do 
    url "https://files.pythonhosted.org/packages/10/be/f247843a453a9215ce59ecf409a6a0bc66118fe3844721da4d062db2c18b/krfzf_py-0.0.6-py3-none-any.whl"
    sha256 "31544989e17f5de10debe8a388f2a8eff7881db570d9eff97b8bf7e0caf0dcab"
  end

  resource "regex" do 
    url "https://files.pythonhosted.org/packages/cc/a9/546676f25e573a4cf00fe8e119b78a37b6a8fe2dc95cda877b30889c9c45/regex-2025.11.3.tar.gz"
    sha256 "1fedc720f9bb2494ce31a58a1631f9c82df6a09b49c19517ea5cc280b4541e01"
  end

  def install
    venv = virtualenv_create(libexec, "python3")
    venv.pip_install resources
    venv.pip_install_and_link buildpath
  end

end
