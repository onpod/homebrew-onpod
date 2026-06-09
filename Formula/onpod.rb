# onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라
#
# install:
#   brew tap onpod/onpod
#   brew install onpod
class Onpod < Formula
  desc "onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라"
  homepage "https://onpod.ai"
  version "0.7.21"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://onpod.ai/cli/onpod-darwin-arm64?v=0.7.21"
      sha256 "793c17086e8b5903e918e3aef5d356b47076d557530495823dd44eb9408fa183"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-darwin-amd64?v=0.7.21"
      sha256 "e12435fa7d6834c8e798fd89b19bebe3d199cfce2aadef5896283948896fb9fe"
    end
  end

  on_linux do
    on_arm do
      url "https://onpod.ai/cli/onpod-linux-arm64?v=0.7.21"
      sha256 "61c8dc99035d08280da34a046020e669bafb2e1c7803369169d7f99b1429eddb"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-linux-amd64?v=0.7.21"
      sha256 "7766c1e9983c3e29319c3ef87ddcb78740a9529350c96a5d722eed6407c20523"
    end
  end

  def install
    bin.install Dir["onpod-*"].first => "onpod"
  end

  test do
    assert_match "onpod", shell_output("#{bin}/onpod --help")
  end
end
