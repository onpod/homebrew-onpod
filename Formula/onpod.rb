# onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라
#
# install:
#   brew tap onpod/onpod
#   brew install onpod
class Onpod < Formula
  desc "onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라"
  homepage "https://onpod.ai"
  version "0.7.13"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://onpod.ai/cli/onpod-darwin-arm64?v=0.7.13"
      sha256 "69a827efd60808b6cb8cb5d5aecf47316d29700dfa0acae75b77ef5ff9dda407"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-darwin-amd64?v=0.7.13"
      sha256 "cf1967d10379313b27926cb2f26140d1ce56943792412f7bc2948871af2c6522"
    end
  end

  on_linux do
    on_arm do
      url "https://onpod.ai/cli/onpod-linux-arm64?v=0.7.13"
      sha256 "ce7b438fcb90bd08e0ca3ce8bb55f19bb77f9ef7fed6fd8855f42bb8cf0a2d6e"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-linux-amd64?v=0.7.13"
      sha256 "1de6abce7e34d1fdad9c806eb7ab5f8df128dfb3ecc587437bfab8fb030d1f86"
    end
  end

  def install
    bin.install Dir["onpod-*"].first => "onpod"
  end

  test do
    assert_match "onpod", shell_output("#{bin}/onpod --help")
  end
end
