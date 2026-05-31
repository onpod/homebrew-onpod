# onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라
#
# install:
#   brew tap onpod/onpod
#   brew install onpod
class Onpod < Formula
  desc "onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라"
  homepage "https://onpod.ai"
  version "0.7.10"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://onpod.ai/cli/onpod-darwin-arm64?v=0.7.10"
      sha256 "e80c834739475daf12f3b946568fe81a4df08242b2e039554531bb20f54d9716"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-darwin-amd64?v=0.7.10"
      sha256 "ca9d45b1295f1862d7d6e553390b8e8ea2da0e6bc3b1c3e74310d8d970e7fcb3"
    end
  end

  on_linux do
    on_arm do
      url "https://onpod.ai/cli/onpod-linux-arm64?v=0.7.10"
      sha256 "4c68e94eabeb5c49f13bb1a252785876623d7f3e26b4c719e4bf553cb7901af7"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-linux-amd64?v=0.7.10"
      sha256 "a9fadf52634c5ddc77f5992ca25afb1dd4732f1552fc417fd95630f778e7d8a7"
    end
  end

  def install
    bin.install Dir["onpod-*"].first => "onpod"
  end

  test do
    assert_match "onpod", shell_output("#{bin}/onpod --help")
  end
end
