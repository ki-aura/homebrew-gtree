class Gtree < Formula
  desc "Tyler Directory Tree"
  homepage "https://github.com/ki-aura/gtree"
  url "https://github.com/ki-aura/gtree/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "88ff35abeecf8da0ed380f9f4c43dd2caf268ca49ef21883b075e35c5d73b0a7"
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
