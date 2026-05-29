# onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라
#
# install:
#   brew tap onpod/onpod
#   brew install onpod
class Onpod < Formula
  desc "onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라"
  homepage "https://onpod.ai"
  version "0.7.4"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://onpod.ai/cli/onpod-darwin-arm64?v=0.7.4"
      sha256 "17eb336bba343fe9449a9f21188774db60f7c803f91292f18606df4a58f62fdd"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-darwin-amd64?v=0.7.4"
      sha256 "f1f251ab0f153e00c4f52e1472d35eb5fd061d593bc07cad266af92eb76a9e8e"
    end
  end

  on_linux do
    on_arm do
      url "https://onpod.ai/cli/onpod-linux-arm64?v=0.7.4"
      sha256 "10957b387414f5a2dd65a0991aa90a1487eb97847a3d4335c3a468c6327a396d"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-linux-amd64?v=0.7.4"
      sha256 "5274397781a04ffe1512e8b58c131221e2d1279025bbe09e0dc5694d4160715c"
    end
  end

  def install
    bin.install Dir["onpod-*"].first => "onpod"
  end

  test do
    assert_match "onpod", shell_output("#{bin}/onpod --help")
  end
end
