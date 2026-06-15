# onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라
#
# install:
#   brew tap onpod/onpod
#   brew install onpod
class Onpod < Formula
  desc "onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라"
  homepage "https://onpod.ai"
  version "0.7.25"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://onpod.ai/cli/onpod-darwin-arm64?v=0.7.25"
      sha256 "17288ba4b860ec386cb56dd07d36c7861ceaf886daaa33f25b7ee59611c15fba"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-darwin-amd64?v=0.7.25"
      sha256 "1288e8b73ea12e5cb815726c7e4e06d916dfe9822fc9030c5151c1508f9e83bc"
    end
  end

  on_linux do
    on_arm do
      url "https://onpod.ai/cli/onpod-linux-arm64?v=0.7.25"
      sha256 "72e24ef2095bf8370a960290a04d3dab6705bb47e81a321631078b8ae511f6ee"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-linux-amd64?v=0.7.25"
      sha256 "a4f7b3f221b53d463b2d36e7da442b862b95682bbb394a5638e7113ab7219896"
    end
  end

  def install
    bin.install Dir["onpod-*"].first => "onpod"
  end

  test do
    assert_match "onpod", shell_output("#{bin}/onpod --help")
  end
end
