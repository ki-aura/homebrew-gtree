class Gtree < Formula
  desc "Tyler Directory Tree"
  homepage "https://github.com/ki-aura/gtree"
  url "https://github.com/ki-aura/gtree/archive/refs/tags/v2.3.2.tar.gz"
  sha256 "06a22c44c7269c6cffb457b1979a6388a65b4b7f5fc963c7ebe4a4456ebe4c2c"
  license "MIT"

  def install
    system "make", "release"
    bin.install "gtree"
  end

  test do
    # Check basic execution
    system "#{bin}/gtree", "-h"
  end
end
