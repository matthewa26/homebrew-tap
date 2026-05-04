class PrScout < Formula
  desc "Scan GitHub PRs across local repos and surface ones that need attention"
  homepage "https://github.com/matthewa26/pr-scout"
  url "https://github.com/matthewa26/pr-scout/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "4b4d644851ab2e68c38f10e9e4c82c1e3e45b6621865bb0bf922b35326fcc7ee"
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
    assert_match "0.1.1", shell_output("#{bin}/pr-scout --version")
  end
end
