# onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라
#
# install:
#   brew tap onpod/onpod
#   brew install onpod
class Onpod < Formula
  desc "onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라"
  homepage "https://onpod.ai"
  version "0.1.1"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://onpod.ai/cli/onpod-darwin-arm64?v=0.1.1"
      sha256 "206f69352108ee7ad1fc9dec1c5d2675d050d3aade008aa78cdb6d363f84cfdf"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-darwin-amd64?v=0.1.1"
      sha256 "3009475bfda4ebdc59d2ccb34ad543d4c6f7e968a7e4e1fc6336e12b560e5ede"
    end
  end

  on_linux do
    on_arm do
      url "https://onpod.ai/cli/onpod-linux-arm64?v=0.1.1"
      sha256 "6071fe85882dd60614a20a68c00b4b48c07967d79424c7cc484ad479e8efb207"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-linux-amd64?v=0.1.1"
      sha256 "afca4a71f9effe578f68a37b379c6b718e455088f0fddfb993ef46a2673500e0"
    end
  end

  def install
    bin.install Dir["onpod-*"].first => "onpod"
  end

  test do
    assert_match "onpod", shell_output("#{bin}/onpod --help")
  end
end
