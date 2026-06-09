# onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라
#
# install:
#   brew tap onpod/onpod
#   brew install onpod
class Onpod < Formula
  desc "onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라"
  homepage "https://onpod.ai"
  version "0.7.22"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://onpod.ai/cli/onpod-darwin-arm64?v=0.7.22"
      sha256 "d3df690e4d51aae9ffdab4d48b4844385920160c80986b903f144e3de28a3333"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-darwin-amd64?v=0.7.22"
      sha256 "bf53b4d6e0521719a08a641732bc10e753517c9d6e5c9effcdfe0f44d7fb16ba"
    end
  end

  on_linux do
    on_arm do
      url "https://onpod.ai/cli/onpod-linux-arm64?v=0.7.22"
      sha256 "9326e55cb92e52e0162c30534be4edc845fc0ae506e2cf676c348c3ffca22600"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-linux-amd64?v=0.7.22"
      sha256 "81b90b1bd3a3295a188a9cc1022563fd31e63ed138c875f7f4e9d76728424499"
    end
  end

  def install
    bin.install Dir["onpod-*"].first => "onpod"
  end

  test do
    assert_match "onpod", shell_output("#{bin}/onpod --help")
  end
end
