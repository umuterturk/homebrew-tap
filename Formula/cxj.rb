class Cxj < Formula
  desc "Stateless Java/Spring code intelligence CLI for coding agents"
  homepage "https://github.com/umuterturk/cxj"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/umuterturk/cxj/releases/download/v#{version}/cxj-macos-arm64.zip"
      sha256 "422c9b76d869368d7556894f9d4ec9a1c1a50e1e3b81e2523f85644d62d0dd11"
    end
    on_intel do
      url "https://github.com/umuterturk/cxj/releases/download/v#{version}/cxj-macos-x86_64.zip"
      sha256 "4ef7e4ccd8efd0ee39865c2330070183ff8a3e0bf0dca29b6769e98a3098577b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/umuterturk/cxj/releases/download/v#{version}/cxj-linux-arm64.zip"
      sha256 "52e4934f24a52b0a9109bebe54b6f25b75af70bf12f172966a704a49a3c78909"
    end
    on_intel do
      url "https://github.com/umuterturk/cxj/releases/download/v#{version}/cxj-linux-x86_64.zip"
      sha256 "e118bdd790e3acecd8b33da4211ee004a429742bab0011b2e70a2975eedbfe24"
    end
  end

  def install
    bin.install "cxj"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cxj version")
  end
end
