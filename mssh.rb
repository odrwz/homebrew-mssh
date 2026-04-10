class Mssh < Formula
  desc "SSH Host & Key Manager CLI"
  homepage "https://github.com/odrwz/mssh"
  url "https://raw.githubusercontent.com/odrwz/mssh/main/mssh?v=2.1.2"
  sha256 "8cf237d59916bc8346f4237ebf0c63aa5fa5afa6f4a9f21d53af89986e75bbee"
  version "2.1.2"

  def install
    bin.install "mssh"
  end

  test do
    assert_match "mssh", shell_output("#{bin}/mssh 2>&1 || true")
  end
end
