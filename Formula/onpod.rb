# onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라
#
# install:
#   brew tap onpod/onpod
#   brew install onpod
class Onpod < Formula
  desc "onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라"
  homepage "https://onpod.ai"
  version "0.7.8"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://onpod.ai/cli/onpod-darwin-arm64?v=0.7.8"
      sha256 "c898e78c1ca03a6a053dbe3b556be203225dc5e8a29d23c85faf30f46e59a64b"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-darwin-amd64?v=0.7.8"
      sha256 "bb295dedabb3af8624f1411fbb8299c6909823a276060c00f8035e43fb6b5d00"
    end
  end

  on_linux do
    on_arm do
      url "https://onpod.ai/cli/onpod-linux-arm64?v=0.7.8"
      sha256 "28185aca409cf35b91322a68866b96352b5dc72a548fcd25df1bb07545308bb1"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-linux-amd64?v=0.7.8"
      sha256 "517ac79ae8aea1b14b81262739d1304398cc93297cb2ead4761d49a3fd3f49a6"
    end
  end

  def install
    bin.install Dir["onpod-*"].first => "onpod"
  end

  test do
    assert_match "onpod", shell_output("#{bin}/onpod --help")
  end
end
