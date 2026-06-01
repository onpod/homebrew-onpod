# onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라
#
# install:
#   brew tap onpod/onpod
#   brew install onpod
class Onpod < Formula
  desc "onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라"
  homepage "https://onpod.ai"
  version "0.7.14"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://onpod.ai/cli/onpod-darwin-arm64?v=0.7.14"
      sha256 "cfbd59a7befe85a630e6af2636744074b7efc94f25569e4366abe6f5429589c8"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-darwin-amd64?v=0.7.14"
      sha256 "190f5ade3fa2566b472dfd3f171e3056deaa09d3d2baa511df53f3129573f416"
    end
  end

  on_linux do
    on_arm do
      url "https://onpod.ai/cli/onpod-linux-arm64?v=0.7.14"
      sha256 "0a1214318a2486c2c63fa264f43395b213cfcd5157a671ba66f3019f493ea2ab"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-linux-amd64?v=0.7.14"
      sha256 "bb77c637cd5111df1510ceafbee6dcb653522e484fe85708b6c2a60954dc665d"
    end
  end

  def install
    bin.install Dir["onpod-*"].first => "onpod"
  end

  test do
    assert_match "onpod", shell_output("#{bin}/onpod --help")
  end
end
