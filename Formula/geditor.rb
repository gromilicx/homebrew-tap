# Generated from verified release archives. Copy to homebrew-tap/Formula/geditor.rb.
class Geditor < Formula
  desc "Terminal code editor with Markdown preview, AI chat, and an integrated shell"
  homepage "https://github.com/gromilicx/Geditor"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  bottle do
    root_url "https://github.com/gromilicx/Geditor/releases/download/v0.3.0"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "78dc0c238e5e21b192b0a7800638e86140c61ba1ef6828a76f2b044e910765d0"
    sha256 cellar: :any_skip_relocation, arm64_linux: "a759669c99f1fa8289a2a5dde053babbe743d0b7c868354d46690af55be565da"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f2cf8f61ef384f4ac59ff278c4661245b282ee21cd77cf744fc000933523c429"
  end

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :big_sur
    url "https://github.com/gromilicx/Geditor/releases/download/v0.3.0/geditor-0.3.0-macos-arm64.tar.gz"
    sha256 "cc162e79131b0c5d5da5c60e9ad62d9a48fa44b22ce16e23b12ce1720fa0e49d"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gromilicx/Geditor/releases/download/v0.3.0/geditor-0.3.0-linux-arm64.tar.gz"
      sha256 "6b79d4cbc26782d6a7387ed68ee781f923abf86d3cc341f7c84c9b964b078cb3"
    else
      url "https://github.com/gromilicx/Geditor/releases/download/v0.3.0/geditor-0.3.0-linux-x64.tar.gz"
      sha256 "69129051964f69182bcfc6ac86d5d171eef4757103a67a2f5b7d4b5aa09478fd"
    end
  end

  def install
    bin.install "geditor"
    bin.install_symlink "geditor" => "ge"
  end

  test do
    assert_match "GEditor #{version}", shell_output("#{bin}/geditor --version")
    assert_match "Usage:", shell_output("#{bin}/ge --help")
  end
end
