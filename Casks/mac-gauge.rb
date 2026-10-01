cask "mac-gauge" do
  version "1.0,850"
  sha256 "507af3cfd414efa7171082dd643cd6cb6c61c52765d7cf4837a0a5d1e34cf9be"

  url "https://github.com/harshityadav95/Mac-Gauge-App/releases/download/v1.0-prod.850/Mac-Gauge.dmg"
  name "Mac Gauge"
  desc "System monitor for the macOS menu bar"
  homepage "https://harshityadav.in/Mac-Gauge-App/"

  depends_on arch: :arm64
  depends_on macos: :tahoe
  app "Mac Gauge.app"
end
