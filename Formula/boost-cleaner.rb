class BoostCleaner < Formula
  desc "macOS RAM, process, and developer-cache tune-up CLI"
  homepage "https://github.com/Alierkn/boost"
  url "https://github.com/Alierkn/boost/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "f11f7b2af51f19c1c24a5c0ea94f96019e561b9e431ab7575ef4a9fae128190b"
  license "MIT"
  head "https://github.com/Alierkn/boost.git", branch: "main"

  depends_on :macos

  def install
    bin.install "bin/boost" => "boost"
    zsh_completion.install "completions/boost.zsh" => "_boost"
    pkgshare.install "launchd"
    doc.install "README.md", "CHANGELOG.md", "SECURITY.md"
  end

  def caveats
    <<~EOS
      The command is installed as:
        boost

      Optional helpers:
        brew install gum
        brew install mole

      Check your installation:
        boost doctor
    EOS
  end

  test do
    assert_match "boost v1.1.0", shell_output("#{bin}/boost --version")
    assert_match "boost doctor", shell_output("#{bin}/boost doctor")
  end
end
