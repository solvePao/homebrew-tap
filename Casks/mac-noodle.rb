cask "mac-noodle" do
  version "1.0.5,65"
  sha256 "d0da47faab0cf75350d75e4fb06b101b03f2e7c7e854d1d63d9ffc42885545f9"

  url "https://github.com/solvePao/Mac-Noodle-Web/releases/download/v1.0.5-xcode-cloud.65/Mac-Noodle.dmg"
  name "Mac Noodle"
  desc "A beautiful macOS menu bar app for visualizing disk usage"
  homepage "https://macnoodle.com"

  depends_on macos: ">= :ventura"

  app "Mac Noodle.app"

  postflight do
    marker = "#{Dir.home}/Library/Containers/com.solvepao.mac.noodle/Data/Library/Application Support/Mac Noodle/distribution-channel"
    FileUtils.mkdir_p(File.dirname(marker))
    File.write(marker, "homebrew-v1\n")
  end

  zap trash: [
    "~/Library/Application Support/Mac Noodle",
    "~/Library/Containers/com.solvepao.mac.noodle",
  ]
end
