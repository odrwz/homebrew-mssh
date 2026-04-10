class Mssh < Formula
  desc "SSH Host & Key Manager CLI"
  homepage "https://github.com/odrwz/mssh"
  url "https://raw.githubusercontent.com/odrwz/mssh/main/mssh"
  sha256 "fd3899c2f0d990f2a8e948af7785657c6e3d89283c5f43d3b31978bb45e3a955"
  version "2.1.1"

  def install
    bin.install "mssh"
  end

  test do
    assert_match "mssh", shell_output("#{bin}/mssh 2>&1 || true")
  end
end
