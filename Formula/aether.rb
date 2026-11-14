class Aether < Formula
  desc "Share your personal AI agent with people you trust"
  homepage "https://github.com/flowcopilot/aether"
  version "0.1.1"
  license "Apache-2.0"
  on_macos do
    depends_on macos: :sequoia
    on_arm do
      url "https://github.com/flowcopilot/aether/releases/download/v0.1.1/aether-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "414bd527f2b07817cbd1501460fda22fd6d4f9a412359849480827e3bd14e327"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/flowcopilot/aether/releases/download/v0.1.1/aether-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "75a4f27e5be24d8dd801d68a78dea6c954bcf36b10d108fe1102f2280672f498"
    end
    on_intel do
      url "https://github.com/flowcopilot/aether/releases/download/v0.1.1/aether-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c5b707ca4fad92b1ea5b8422f3e4fc7ef17bdd11f05ee55799da5fbb1f629b05"
    end
  end

  def install
    bin.install "aether"
  end

  test do
    assert_match "aether", shell_output("#{bin}/aether --help")
  end
end
