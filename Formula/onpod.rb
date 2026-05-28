# onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라
#
# install:
#   brew tap onpod/onpod
#   brew install onpod
class Onpod < Formula
  desc "onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라"
  homepage "https://onpod.ai"
  version "0.7.1"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://onpod.ai/cli/onpod-darwin-arm64?v=0.7.1"
      sha256 "28b6ba8dd212d15acd14997658d6341d4205d34b6b76dfb904ddc5278a61adbd"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-darwin-amd64?v=0.7.1"
      sha256 "09d11df8119879b652f7932534e040055623a8606fde4e13648e7fcc3bb9a186"
    end
  end

  on_linux do
    on_arm do
      url "https://onpod.ai/cli/onpod-linux-arm64?v=0.7.1"
      sha256 "2234907a1b0a08716514cb6750a3c90f8d4fe12288a2124eff1ff34628782c66"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-linux-amd64?v=0.7.1"
      sha256 "acacf4781c41053204bf60d92956dc3517e4fa53d48c69e92bb41f519fb046f6"
    end
  end

  def install
    bin.install Dir["onpod-*"].first => "onpod"
  end

  test do
    assert_match "onpod", shell_output("#{bin}/onpod --help")
  end
end
