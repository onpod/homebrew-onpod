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
      sha256 "9c67de30f11dafc18214759f66877d96f6ff059eaf73b683610fa280704c018d"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-darwin-amd64?v=0.1.1"
      sha256 "b95e80d6fd7fe11d600cc275484bdda5c7af595b2c9ba64db28b4d0e73b55751"
    end
  end

  on_linux do
    on_arm do
      url "https://onpod.ai/cli/onpod-linux-arm64?v=0.1.1"
      sha256 "a46db3bc68a42bb3bb187d52eec3a94bac38843749b58ca20cb5bc5cd4f87e6e"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-linux-amd64?v=0.1.1"
      sha256 "c966830768f0848b9388d96f3cf761c7b424c120c36802ed9fee72c34be9a1dd"
    end
  end

  def install
    bin.install Dir["onpod-*"].first => "onpod"
  end

  test do
    assert_match "onpod", shell_output("#{bin}/onpod --help")
  end
end
