cask "dhaicone-studio" do
  version "0.1.0,22"
  sha256 "87d63600d7b6890fba730e2fe58a22562dd8132cf06a370d1cc2eec572cd8e38"

  url "https://github.com/harshityadav95/Dhaicone-Studio-App/releases/download/v0.1.0-prod.22/Dhaicone-Studio.dmg"
  name "Dhaicone Studio"
  desc "Native screen recorder and multitrack video editor"
  homepage "https://harshityadav.in/Dhaicone-Studio-App/"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"
  app "Dhaicone Studio.app"
end
