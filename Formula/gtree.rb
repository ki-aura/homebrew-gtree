class Gtree < Formula
  desc "Tyler Directory Tree"
  homepage "https://github.com/ki-aura/gtree"
  url "https://github.com/ki-aura/gtree/archive/refs/tags/v2.1.0.tar.gz"
  sha256 "644bf998cf671b28cc23639751b3269685b87db3d7a4807b403d06d5d58a0394"
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
