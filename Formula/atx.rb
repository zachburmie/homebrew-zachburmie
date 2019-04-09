class Atx < Formula
  desc "Quick AWS role Switcher"
  homepage "https://github.com/zachburmie/atx"
  url "https://github.com/zachburmie/atx.git"
  version "95cf5168f616eebfe42b0be210cc98850a712cde"
  head "https://github.com/zachburmie/atx.git"

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
