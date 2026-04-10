class Mssh < Formula
  desc "SSH Host & Key Manager CLI"
  homepage "https://github.com/odrwz/mssh"
  url "https://raw.githubusercontent.com/odrwz/mssh/main/mssh"
  sha256 "d96fa87a444d6490d88e21ae6dad420d111bc869b03e8b387eb79ec8d46e596c"
  version "2.1.0"

  def install
    bin.install "mssh"
  end

  test do
    assert_match "mssh", shell_output("#{bin}/mssh 2>&1 || true")
  end
end
