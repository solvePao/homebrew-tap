cask "mac-noodle" do
  version "1.0.4,38"
  sha256 "0834eb57dbb13b0252a2ad35cbf7665751c0e4144308cb454745975adc29ce89"

  url "https://github.com/solvePao/Mac-Noodle-Web/releases/download/v1.0.4-xcode-cloud.38/Mac-Noodle.dmg"
  name "Mac Noodle"
  desc "Free space safely with guided cleanup tools"
  homepage "https://github.com/solvePao/Mac-Noodle-Web"

  depends_on macos: ">= :ventura"

  app "Mac Noodle.app"

  postflight do
    marker = "#{Dir.home}/Library/Containers/com.solvepao.mac.noodle/Data/Library/Application Support/Mac Noodle/distribution-channel"
    FileUtils.mkdir_p(File.dirname(marker))
    File.write(marker, "homebrew-v1\n")
  end
end
