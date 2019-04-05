class Atx < Formula
  desc "Quick AWS role Switcher"
  homepage "https://github.com/zachburmie/atx"
  url "https://github.com/zachburmie/atx.git"
  version "613261c0efa388ab9e34cce50fa56f0e6b39366d"
  sha256 ""

  depends_on "fzf"
  depends_on "aws-okta" => :optional

  def install
    bin.install "bin/atx"
    prefix.install "helpers"
  end

  test do
    system "which", "atx"
  end
end
