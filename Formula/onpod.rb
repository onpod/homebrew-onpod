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
      sha256 "0e9e047c9d6d682cea8b4c55f38e2cb0abb504cc8c4b0927f173a50b3efa12bf"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-darwin-amd64?v=0.7.15"
      sha256 "c8118a1fbce211c4731df8f41ab7adf5f30d4c9c387f4e08c47395b6f700a337"
    end
  end

  on_linux do
    on_arm do
      url "https://onpod.ai/cli/onpod-linux-arm64?v=0.7.15"
      sha256 "31079d2cea4653c101399cdac18b87a5beb10f1c54eb7a24015ba1ff2528d01e"
    end
    on_intel do
      url "https://onpod.ai/cli/onpod-linux-amd64?v=0.7.15"
      sha256 "2c351642f798aca725fe324d5a73059e1d5bb2bd43536d33b0d1c2915b844c1c"
    end
  end

  def install
    bin.install Dir["onpod-*"].first => "onpod"
  end

  test do
    assert_match "onpod", shell_output("#{bin}/onpod --help")
  end
end
