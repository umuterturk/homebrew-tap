class Kr < Formula
  desc "Fast, syntax-aware rename CLI for Kotlin projects"
  homepage "https://github.com/umuterturk/kotlin-renamer"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/umuterturk/kotlin-renamer/releases/download/v0.2.0/kr_darwin_arm64.tar.gz"
      sha256 "317b545802a6bd20d4b6f7cc50597ca51deeec3bc22203e543939f4e4154db18"
    end

    on_intel do
      url "https://github.com/umuterturk/kotlin-renamer/releases/download/v0.2.0/kr_darwin_amd64.tar.gz"
      sha256 "0554493e22a364d3c307ae120a16cf23b407ff3232fda9ec5b2f6627555e393e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/umuterturk/kotlin-renamer/releases/download/v0.2.0/kr_linux_arm64.tar.gz"
      sha256 "c158a681e7f81a873f59859d14c7f9d97985fac1e9696a94b3ce23981ec0f0bf"
    end

    on_intel do
      url "https://github.com/umuterturk/kotlin-renamer/releases/download/v0.2.0/kr_linux_amd64.tar.gz"
      sha256 "7fc2952bc31aa3595ad3eefb43f8b259a764cc9cdb8432a6325189699da1e6b7"
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
