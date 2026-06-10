# onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라
#
# install:
#   brew tap onpod/onpod
#   brew install onpod
class Onpod < Formula
  desc "onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라"
  homepage "https://onpod.ai"
  version "0.7.23"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://onpod.ai/cli/onpod-darwin-arm64?v=0.7.23"
      sha256 "24f3ac9e68200d5dabdc10c83c9e01958ce9629b3c97ea0099a7b026031c3a49"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-darwin-amd64?v=0.7.23"
      sha256 "a00dd638caace0372b53b12e771e82900a79b3e0b34635bdab7603bdca14b839"
    end
  end

  on_linux do
    on_arm do
      url "https://onpod.ai/cli/onpod-linux-arm64?v=0.7.23"
      sha256 "2f2eac0000c54d9652b10b174f9cb318f108d8481434dbc00f82d6afc54cca88"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-linux-amd64?v=0.7.23"
      sha256 "741cfe1ac699ddec2166e97bdd9aa7b41f20cd4751ba46484e814cfe958e8088"
    end
  end

  def install
    bin.install Dir["onpod-*"].first => "onpod"
  end

  test do
    assert_match "onpod", shell_output("#{bin}/onpod --help")
  end
end
