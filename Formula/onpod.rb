# onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라
#
# install:
#   brew tap onpod/onpod
#   brew install onpod
class Onpod < Formula
  desc "onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라"
  homepage "https://onpod.ai"
  version "0.7.15"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://onpod.ai/cli/onpod-darwin-arm64?v=0.7.15"
      sha256 "1c11d9317a4c2574bdba7cfc98fc2e9e4bd9f32ea9dd1d3c706986995822285b"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-darwin-amd64?v=0.7.15"
      sha256 "a1b182c53d3998d2ca90171088ee9d88e77483dadbbf8754da24fcc9b64aec19"
    end
  end

  on_linux do
    on_arm do
      url "https://onpod.ai/cli/onpod-linux-arm64?v=0.7.15"
      sha256 "2b122631a5fb791d50603fe43085167468e4123793ae36ea74c23f3fe25c5caa"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-linux-amd64?v=0.7.15"
      sha256 "9ba685b5433071a301744ef23289942e714438108e3fe284c440c9b1b0a88300"
    end
  end

  def install
    bin.install Dir["onpod-*"].first => "onpod"
  end

  test do
    assert_match "onpod", shell_output("#{bin}/onpod --help")
  end
end
