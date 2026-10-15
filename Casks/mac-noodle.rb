cask "mac-noodle" do
  version "1.0.5,81"
  sha256 "d2a3210ffe5bf847395d63afd8fd6c8c98c5432fe9803d4391827847b94223f6"
  url "https://github.com/solvePao/Mac-Noodle-Web/releases/download/v1.0.5-xcode-cloud.81/Mac-Noodle.dmg"
  name "Mac Noodle"
  desc "Free space safely with guided cleanup tools"
  homepage "https://macnoodle.com"
  depends_on macos: ">= :sonoma"
  conflicts_with cask: "mac-noodle-beta"
  app "Mac Noodle.app"
  postflight do
    marker = "#{Dir.home}/Library/Containers/com.solvepao.mac.noodle/Data/Library/Application Support/Mac Noodle/distribution-channel"
    FileUtils.mkdir_p(File.dirname(marker))
    require "json"
    identity = File.stat("#{appdir}/Mac Noodle.app")
    File.write(marker, JSON.generate({version: 2, cask: "mac-noodle", device: identity.dev, inode: identity.ino}))
  end
  zap trash: ["~/Library/Containers/com.solvepao.mac.noodle"]
end
