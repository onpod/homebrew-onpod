# onpod CLI — GPU·CPU 시간 단위 마켓플레이스
#
# install:
#   brew install latemonk/onpod/onpod
#
# or tap first:
#   brew tap latemonk/onpod
#   brew install onpod
class Onpod < Formula
  desc "onpod CLI — GPU/CPU on-demand · Claude Code 자율주행"
  homepage "https://onpod.ai"
  version "0.1.0"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://onpod.ai/cli/onpod-darwin-arm64"
      sha256 "068d2d31cc797c1cffe09cb7dc32f74d5484db6ab4610118b25f4560aec6c83c"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-darwin-amd64"
      sha256 "409dad83290bbd44a227d95074857137f24533b5e8f64e93eaab95d3d2548a48"
    end
  end

  on_linux do
    on_arm do
      url "https://onpod.ai/cli/onpod-linux-arm64"
      sha256 "e54b945042f55fe3d6cc56703ac4b0710148cf96180b1df109e350f9ae53a250"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-linux-amd64"
      sha256 "1f606d0ee5a52eeaaf3b74283bc5465f0aab9575b65ac53ac055c4afcdd35637"
    end
  end

  def install
    bin.install Dir["onpod-*"].first => "onpod"
  end

  test do
    assert_match "onpod", shell_output("#{bin}/onpod --help")
  end
end
