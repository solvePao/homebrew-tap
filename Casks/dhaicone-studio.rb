cask "dhaicone-studio" do
  version "0.1.0,25"
  sha256 "e56a346198728913fccff6a0dd54a3958c862d2a78b0dceb6c61c784b81ca6ee"

  url "https://github.com/harshityadav95/Dhaicone-Studio-App/releases/download/v0.1.0-prod.25/Dhaicone-Studio.dmg"
  name "Dhaicone Studio"
  desc "Native screen recorder and multitrack video editor"
  homepage "https://harshityadav.in/Dhaicone-Studio-App/"

  depends_on arch: :arm64
  depends_on macos: :sequoia
  app "Dhaicone Studio.app"
end
