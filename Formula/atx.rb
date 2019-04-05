class Kns < Formula
  desc "Quick AWS role Switcher"
  homepage "https://github.com/zachburmie/atx"
  url "https://github.com/zachburmie/atx.git", :revision => "9e30d8df96dc864383845ea5a12cd460f33166fa"
  version "10c8282ce05efcae1151794f7c220c4716bd2514"
  head "https://github.com/zachburmie/atx.git"

  depends_on "fzf"
  depends_on "aws-okta" => :optional

  def install
    bin.install "bin/atx"
    prefix.install "helpers"
  end

  test do
    system "which", "kns"
  end
end
