# onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라
#
# install:
#   brew tap onpod/onpod
#   brew install onpod
class Onpod < Formula
  desc "onpod CLI — 한 줄로 끝나는 자율주행 GPU·CPU 인프라"
  homepage "https://onpod.ai"
  version "0.7.11"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://onpod.ai/cli/onpod-darwin-arm64?v=0.7.11"
      sha256 "bc39f8766e27f76fa04d60bdd019159da2ea71392db5dfa67dd413faffe43e13"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-darwin-amd64?v=0.7.11"
      sha256 "b0a7237cadeb0c3c36bc44dfec052ab812f36ad8ec143b134bd49cede0239d0c"
    end
  end

  on_linux do
    on_arm do
      url "https://onpod.ai/cli/onpod-linux-arm64?v=0.7.11"
      sha256 "0a9b125c87ccfb9d212cc28adca57119ac3742b74fbc23a966e1e97fd8b99cd5"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-linux-amd64?v=0.7.11"
      sha256 "ffe2191263446c1e53d9f3d9df043c40f6e96075bc82b5cc2112411e2dd73c62"
    end
  end

  def install
    bin.install Dir["onpod-*"].first => "onpod"
  end

  test do
    assert_match "onpod", shell_output("#{bin}/onpod --help")
  end
end
