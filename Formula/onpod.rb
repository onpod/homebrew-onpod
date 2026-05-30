# onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라
#
# install:
#   brew tap onpod/onpod
#   brew install onpod
class Onpod < Formula
  desc "onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라"
  homepage "https://onpod.ai"
  version "0.7.7"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://onpod.ai/cli/onpod-darwin-arm64?v=0.7.7"
      sha256 "d9bf6fc587ecbcf8398a5bfe903a72d0bca71295a543bb399c5fa74ed0e0de81"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-darwin-amd64?v=0.7.7"
      sha256 "e033863150abe862a9b24c403ca39b379655422bc36212d6174b3bf3d78ff2be"
    end
  end

  on_linux do
    on_arm do
      url "https://onpod.ai/cli/onpod-linux-arm64?v=0.7.7"
      sha256 "0953dfe4c300389fd640906d34f9138083b6808fd71e2bb51dc3c4c2d447e34f"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-linux-amd64?v=0.7.7"
      sha256 "5e155b81dde6636bb44d05bbddea8631f163ed6507ef01a0f775f3a208ed6edb"
    end
  end

  def install
    bin.install Dir["onpod-*"].first => "onpod"
  end

  test do
    assert_match "onpod", shell_output("#{bin}/onpod --help")
  end
end
