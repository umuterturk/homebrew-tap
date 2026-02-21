class Kr < Formula
  desc "Fast, syntax-aware rename and analysis CLI for Kotlin projects"
  homepage "https://github.com/umuterturk/kotlin-renamer"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/umuterturk/kotlin-renamer/releases/download/v0.3.0/kr_darwin_arm64.tar.gz"
      sha256 "88bda2620379d1d9cd0c08f3be572dd3b21abdf8b48fdc5035ee122809860696"
    end

    on_intel do
      url "https://github.com/umuterturk/kotlin-renamer/releases/download/v0.3.0/kr_darwin_amd64.tar.gz"
      sha256 "32ca43c1c5488df1a990cb2721de29340934f9ed7102630e896fdb80307b883d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/umuterturk/kotlin-renamer/releases/download/v0.3.0/kr_linux_arm64.tar.gz"
      sha256 "574253dab739fbdbeed283ec6c99a526bb0474636a0cf7f4abdc2fc1f6ee92ef"
    end

    on_intel do
      url "https://github.com/umuterturk/kotlin-renamer/releases/download/v0.3.0/kr_linux_amd64.tar.gz"
      sha256 "78f671dbd8497d8be31224bc86cb392462eb2b562a1327923ab82ef8adb5b161"
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
