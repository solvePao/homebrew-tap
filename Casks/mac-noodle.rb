cask "mac-noodle" do
  version "1.0.5,46"
  sha256 "7d7b17c3c0936545de6f295264f18250be09239fea6a25a02719d71c9f5ba6ec"

  url "https://github.com/solvePao/Mac-Noodle-Web/releases/download/v1.0.5-xcode-cloud.46/Mac-Noodle.dmg"
  name "Mac Noodle"
  desc "A beautiful macOS menu bar app for visualizing disk usage"
  homepage "https://macnoodle.com"

  depends_on macos: ">= :ventura"

  app "Mac Noodle.app"

  postflight do
    marker = "#{Dir.home}/Library/Containers/com.solvepao.mac.noodle/Data/Library/Application Support/Mac Noodle/distribution-channel"
    FileUtils.mkdir_p(File.dirname(marker))
    File.write(marker, "homebrew-v1\\n")
  end

  zap trash: [
    "~/Library/Application Support/Mac Noodle",
    "~/Library/Containers/com.solvepao.mac.noodle",
  ]
end