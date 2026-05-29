# onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라
#
# install:
#   brew tap onpod/onpod
#   brew install onpod
class Onpod < Formula
  desc "onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라"
  homepage "https://onpod.ai"
  version "0.7.6"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://onpod.ai/cli/onpod-darwin-arm64?v=0.7.6"
      sha256 "1547d781c86432291f7f27e0d30f37cc641150f0485f42850b68908a279a26ce"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-darwin-amd64?v=0.7.6"
      sha256 "cfbf2e19e7581a7f847cfce5ec62719d1053acac53ceaa370ffe21ec5c1bafbe"
    end
  end

  on_linux do
    on_arm do
      url "https://onpod.ai/cli/onpod-linux-arm64?v=0.7.6"
      sha256 "5377afdc7a6d7daf9081486977938d65a503f9df3b870e8fe1427860b3526909"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-linux-amd64?v=0.7.6"
      sha256 "792ff2b4e589098cdd5d20928b75956ac2c2c1a8053d557585c1a82e63856690"
    end
  end

  def install
    bin.install Dir["onpod-*"].first => "onpod"
  end

  test do
    assert_match "onpod", shell_output("#{bin}/onpod --help")
  end
end
