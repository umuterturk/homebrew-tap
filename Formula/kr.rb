class Kr < Formula
  desc "Fast, syntax-aware rename and analysis CLI for Kotlin projects"
  homepage "https://github.com/umuterturk/kotlin-renamer"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/umuterturk/kotlin-renamer/releases/download/v0.3.1/kr_darwin_arm64.tar.gz"
      sha256 "ff2b3d04b9f2af0aa1271b5802089391c5c92c91cdd990fc47aa3dfe30e1a54e"
    end

    on_intel do
      url "https://github.com/umuterturk/kotlin-renamer/releases/download/v0.3.1/kr_darwin_amd64.tar.gz"
      sha256 "60796348e29d0bcf554a3ee7dc092856bc0d551e22482bdda6a8e168c388562c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/umuterturk/kotlin-renamer/releases/download/v0.3.1/kr_linux_arm64.tar.gz"
      sha256 "fb00ebed85dcabc287bbdc967d08f54bfc5ca655895c946a8b675895741612eb"
    end

    on_intel do
      url "https://github.com/umuterturk/kotlin-renamer/releases/download/v0.3.1/kr_linux_amd64.tar.gz"
      sha256 "fa75912ca074755b25e1ef53f0e94eb95c42eb2a91494a826e08fc009fcb29a1"
    end
  end

  def install
    bin.install "kr"
  end

  def post_install
    system bin/"kr", "setup", "--claude-code"
  end

  test do
    assert_match "kr", shell_output("#{bin}/kr --version")
  end
end
