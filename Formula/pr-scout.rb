class PrScout < Formula
  desc "Scan GitHub PRs across local repos and surface ones that need attention"
  homepage "https://github.com/matthewa26/pr-scout"
  url "https://github.com/matthewa26/pr-scout/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "405fcc3c88c2d4a063ce03c6d92e038bb9956cbde8d8e77d482700bc487b520e"
  license "Apache-2.0"
  head "https://github.com/matthewa26/pr-scout.git", branch: "main"

  depends_on xcode: ["15.0", :build]
  depends_on "gh"
  depends_on macos: :ventura

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/pr-scout"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/pr-scout --version")
  end
end
