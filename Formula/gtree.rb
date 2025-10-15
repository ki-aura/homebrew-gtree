class Gtree < Formula
  desc "Tyler Directory Tree"
  homepage "https://github.com/ki-aura/gtree"
  url "https://github.com/ki-aura/gtree/archive/refs/tags/v2.3.0.tar.gz"
  sha256 "20e1934027b1beb0cb7173bcd756104629c499f3f0ff881d8dc50bad7c41a4a5"
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
