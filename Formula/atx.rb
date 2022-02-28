class Atx < Formula
  desc "Quick AWS role Switcher"
  homepage "https://github.com/zachburmie/atx"
  url "https://github.com/zachburmie/atx.git"
  version "2871c3a4ab6a44d6edcb29e76d99ef9a2f47224b"
  head "https://github.com/zachburmie/atx.git"

  depends_on "aws-okta"
  depends_on "fzf"
  
  def install
    bin.install "bin/atx"
    prefix.install "helpers"
  end

  test do
    system "which", "atx"
  end
end
