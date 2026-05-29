# onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라
#
# install:
#   brew tap onpod/onpod
#   brew install onpod
class Onpod < Formula
  desc "onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라"
  homepage "https://onpod.ai"
  version "0.7.5"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://onpod.ai/cli/onpod-darwin-arm64?v=0.7.5"
      sha256 "a8bc8c5e62c09eb707e430697f9da8062447e8e6feb25d0273e6762edddc890b"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-darwin-amd64?v=0.7.5"
      sha256 "d829849d1db96d9d52ec077cc3a4593fc5fe7dabbb641a9818e403e71702a526"
    end
  end

  on_linux do
    on_arm do
      url "https://onpod.ai/cli/onpod-linux-arm64?v=0.7.5"
      sha256 "78ee1fc25f88c5dbdf7ea0fb94e7110c524222d0206891c5f50157e7aa1b787e"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-linux-amd64?v=0.7.5"
      sha256 "acb926b3ded441e891eee8bfe803b082e6f4f9cb04d43a6df5e305e467bb189a"
    end
  end

  def install
    bin.install Dir["onpod-*"].first => "onpod"
  end

  test do
    assert_match "onpod", shell_output("#{bin}/onpod --help")
  end
end
