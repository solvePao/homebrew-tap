cask "mac-noodle" do
  version "1.0.5,63"
  sha256 "ef0c79e220f84915b2fd2a6255a821ec357fcba9979237ebb2edf7d66d410c52"

  url "https://github.com/solvePao/Mac-Noodle-Web/releases/download/v1.0.5-xcode-cloud.63/Mac-Noodle.dmg"
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
