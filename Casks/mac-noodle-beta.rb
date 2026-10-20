cask "mac-noodle-beta" do
  version "1.0.5,83"
  sha256 "79fd0ff9b577eb29449ce586b925ab869b9d5f243c8ef2e742214fd930e1c120"
  url "https://github.com/solvePao/Mac-Noodle-Web/releases/download/v1.0.5-beta-xcode-cloud.83/Mac-Noodle.dmg"
  name "Mac Noodle"
  desc "Free space safely with guided cleanup tools"
  homepage "https://macnoodle.com"
  depends_on macos: ">= :sonoma"
  conflicts_with cask: "mac-noodle"
  app "Mac Noodle.app"
  postflight do
    marker = "#{Dir.home}/Library/Containers/com.solvepao.mac.noodle/Data/Library/Application Support/Mac Noodle/distribution-channel"
    FileUtils.mkdir_p(File.dirname(marker))
    require "json"
    identity = File.stat("#{appdir}/Mac Noodle.app")
    File.write(marker, JSON.generate({version: 2, cask: "mac-noodle-beta", device: identity.dev, inode: identity.ino}))
  end
  zap trash: ["~/Library/Containers/com.solvepao.mac.noodle"]
end
