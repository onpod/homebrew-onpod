# onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라
#
# install:
#   brew tap onpod/onpod
#   brew install onpod
class Onpod < Formula
  desc "onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라"
  homepage "https://onpod.ai"
  version "0.7.12"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://onpod.ai/cli/onpod-darwin-arm64?v=0.7.12"
      sha256 "9c88c2df1697710715e7e7b88bdb78a1577521998133e991194a6708caffb0de"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-darwin-amd64?v=0.7.12"
      sha256 "4ab3bf6cb1f095ec7589e043f07b7ca8cefa4a22604c7b91a9d2a8b524e84844"
    end
  end

  on_linux do
    on_arm do
      url "https://onpod.ai/cli/onpod-linux-arm64?v=0.7.12"
      sha256 "dfb79de3df0f29f0b96df2c66ba29790534b462f62584c315fce551bafd4c0b8"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-linux-amd64?v=0.7.12"
      sha256 "f8cb1bf8e2a4e13bfc1169840670d546c688fe5dae6e01cb0230860e3ba4aaee"
    end
  end

  def install
    bin.install Dir["onpod-*"].first => "onpod"
  end

  test do
    assert_match "onpod", shell_output("#{bin}/onpod --help")
  end
end
