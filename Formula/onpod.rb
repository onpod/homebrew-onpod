# onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라
#
# install:
#   brew tap onpod/onpod
#   brew install onpod
class Onpod < Formula
  desc "onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라"
  homepage "https://onpod.ai"
  version "0.7.16"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://onpod.ai/cli/onpod-darwin-arm64?v=0.7.16"
      sha256 "8b18cf3f5ecb772743e26480dd2382ee0f3b751cc3a874aa6a9b3a0d9893cc98"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-darwin-amd64?v=0.7.16"
      sha256 "4b66e779fd26bf7875ad170dabb980d30d001b716ee958f0af1a669ae5cbc600"
    end
  end

  on_linux do
    on_arm do
      url "https://onpod.ai/cli/onpod-linux-arm64?v=0.7.16"
      sha256 "f9e396b71f83432ec3c657b7a55e5097602c9242c7908dbf8e44050223dec8dc"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-linux-amd64?v=0.7.16"
      sha256 "2f97bd2085207a7e3d2a9eddd2a57a25aa068d82e1e842052deccb930ce37aa7"
    end
  end

  def install
    bin.install Dir["onpod-*"].first => "onpod"
  end

  test do
    assert_match "onpod", shell_output("#{bin}/onpod --help")
  end
end
