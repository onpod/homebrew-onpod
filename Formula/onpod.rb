# onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라
#
# install:
#   brew tap onpod/onpod
#   brew install onpod
class Onpod < Formula
  desc "onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라"
  homepage "https://onpod.ai"
  version "0.7.3"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://onpod.ai/cli/onpod-darwin-arm64?v=0.7.3"
      sha256 "f9e57815e6d02e904fadfe0e1c4c7d3fc9392e86fbd5827ec123497ef54d351c"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-darwin-amd64?v=0.7.3"
      sha256 "23a634bca8a542b25bd7edcfe46e135f4c58c929ed3b8b5b9e04cfb393dcc04b"
    end
  end

  on_linux do
    on_arm do
      url "https://onpod.ai/cli/onpod-linux-arm64?v=0.7.3"
      sha256 "a2ad3d23b84959a9be379d300bf5f93c737a481a39b7d473dc5570ff730b4ca5"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-linux-amd64?v=0.7.3"
      sha256 "e7fc15e1d23ead4911b655ee56fafef88a9f2505da205fe0a57025e6038bd904"
    end
  end

  def install
    bin.install Dir["onpod-*"].first => "onpod"
  end

  test do
    assert_match "onpod", shell_output("#{bin}/onpod --help")
  end
end
