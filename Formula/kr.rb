class Kr < Formula
  desc "Fast, syntax-aware rename CLI for Kotlin projects"
  homepage "https://github.com/umuterturk/kotlin-renamer"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/umuterturk/kotlin-renamer/releases/download/v0.1.1/kr_darwin_arm64.tar.gz"
      sha256 "780cf26ff7947e159e7f00a577fc5a5698e1a22183740aa8c9dcb21e0ebeb1ba"
    end

    on_intel do
      url "https://github.com/umuterturk/kotlin-renamer/releases/download/v0.1.1/kr_darwin_amd64.tar.gz"
      sha256 "2b9ebd668c2120e353e9f408f2c499946d95fcba6b3b2ee17a2e9abdc89b5eef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/umuterturk/kotlin-renamer/releases/download/v0.1.1/kr_linux_arm64.tar.gz"
      sha256 "192bb43d1df986076ddf54086f1bdc50fbc633ceaad713eaf89e01072ebda419"
    end

    on_intel do
      url "https://github.com/umuterturk/kotlin-renamer/releases/download/v0.1.1/kr_linux_amd64.tar.gz"
      sha256 "c8844510cce1170e91d55affe936c13e45dc78b3fee84c486e62f2a22e79b08b"
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
