cask "mac-noodle" do
  version "1.0.5,61"
  sha256 "bb30a6cc66fdcf4c42b01689546a08193b51cb221e1d66b220acbe534661a4ee"

  url "https://github.com/solvePao/Mac-Noodle-Web/releases/download/v1.0.5-xcode-cloud.61/Mac-Noodle.dmg"
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
