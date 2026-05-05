class PrScout < Formula
  desc "Scan GitHub PRs across local repos and surface ones that need attention"
  homepage "https://github.com/matthewa26/pr-scout"
  url "https://github.com/matthewa26/pr-scout/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "779dbdaca97c93dd2bdbef624b798765bc34d97bad88c3fe3ecf2d4073860592"
  license "Apache-2.0"
  head "https://github.com/matthewa26/pr-scout.git", branch: "main"

  depends_on xcode: ["15.0", :build]
  depends_on "gh"
  depends_on macos: :ventura

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/pr-scout"
    man1.install "man/pr-scout.1" if File.exist?("man/pr-scout.1")
  end

  test do
    assert_match "0.2.1", shell_output("#{bin}/pr-scout --version")
  end
end
