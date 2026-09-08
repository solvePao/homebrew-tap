cask "mac-noodle" do
  version "1.0.5,60"
  sha256 "fe7b8c1365f8cc7d03ec344a4a835858823651c5d24172d6b71915b1dbfc2229"

  url "https://github.com/solvePao/Mac-Noodle-Web/releases/download/v1.0.5-xcode-cloud.60/Mac-Noodle.dmg"
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
