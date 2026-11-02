class Cxj < Formula
  desc "Stateless Java/Spring code intelligence CLI for coding agents"
  homepage "https://github.com/umuterturk/cxj"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/umuterturk/cxj/releases/download/v0.4.0/cxj-macos-arm64.zip"
      sha256 "f557ad67610d6b08fb35002c332efa6605f1cd61a3c02f72885a8f4e9c2cd0ee"
    end
    on_intel do
      url "https://github.com/umuterturk/cxj/releases/download/v0.4.0/cxj-macos-x86_64.zip"
      sha256 "3c7a66fb5121611276c31543644c17dada60fd8ea3d44cadd8131dcf6dfe3a8e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/umuterturk/cxj/releases/download/v0.4.0/cxj-linux-arm64.zip"
      sha256 "986cd706aaa885def59703894cb85a928641b141c90d94fac343a8a02fa0a91e"
    end
    on_intel do
      url "https://github.com/umuterturk/cxj/releases/download/v0.4.0/cxj-linux-x86_64.zip"
      sha256 "aebce3c75b6a2b395c93a42c6d9a894a98be96bd611627a0f6db444df267f75b"
    end
  end

  def install
    bin.install "cxj"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cxj version")
  end
end
