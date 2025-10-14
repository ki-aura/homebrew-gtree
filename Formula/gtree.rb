class Gtree < Formula
  desc "Tyler Directory Tree"
  homepage "https://github.com/ki-aura/gtree"
  url "https://github.com/ki-aura/gtree/archive/refs/tags/v2.1.4.tar.gz"
  sha256 "df5de6babe3178751344f8262c7d5dcd71c8599502419b9a8dc9714c78d4d7e4"
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
