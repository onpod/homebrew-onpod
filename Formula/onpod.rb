# onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라
#
# install:
#   brew tap onpod/onpod
#   brew install onpod
class Onpod < Formula
  desc "onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라"
  homepage "https://onpod.ai"
  version "0.7.2"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://onpod.ai/cli/onpod-darwin-arm64?v=0.7.2"
      sha256 "ca8ef0c4be3812aef4adb828f799c53aef59da55f2aa9a425082643792a359f3"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-darwin-amd64?v=0.7.2"
      sha256 "c617077c9db820c1681fae00609828f01df25a3127a8ad202d617859ab826e83"
    end
  end

  on_linux do
    on_arm do
      url "https://onpod.ai/cli/onpod-linux-arm64?v=0.7.2"
      sha256 "639731a5d98d5d29a341865b8be3a9fcc31cf41925bcb52d365623f4bf9d8388"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-linux-amd64?v=0.7.2"
      sha256 "c5cc9b79f26ad4efa7ef7871329553f2cff82d0da88abab6acda56f3ad0134b5"
    end
  end

  def install
    bin.install Dir["onpod-*"].first => "onpod"
  end

  test do
    assert_match "onpod", shell_output("#{bin}/onpod --help")
  end
end
