# onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라
#
# install:
#   brew tap onpod/onpod
#   brew install onpod
class Onpod < Formula
  desc "onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라"
  homepage "https://onpod.ai"
  version "0.7.9"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://onpod.ai/cli/onpod-darwin-arm64?v=0.7.9"
      sha256 "85ac03360299be0cd456ea1477bfd6b7250df3e3986ea6c9680828d2ea581c91"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-darwin-amd64?v=0.7.9"
      sha256 "f523440d6fb8b3d4ee21f3ae2749d327b8d38c093a62f12155b729815bef2490"
    end
  end

  on_linux do
    on_arm do
      url "https://onpod.ai/cli/onpod-linux-arm64?v=0.7.9"
      sha256 "0671a92e2e22fed5fc1c66ff74a135479035e0ee4d0c8b747e68c42a2f738925"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-linux-amd64?v=0.7.9"
      sha256 "c356fb7d0d6ce00d60f3a3868769def7af73cb9e3d8b4fde4877d3c13b754f5b"
    end
  end

  def install
    bin.install Dir["onpod-*"].first => "onpod"
  end

  test do
    assert_match "onpod", shell_output("#{bin}/onpod --help")
  end
end
