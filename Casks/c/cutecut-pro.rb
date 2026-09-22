cask "cutecut-pro" do
  version "2.4.4"
  sha256 :4c4a51bd0f4d44be42111ee971ff4a3e6f2218e20f059cbc07ff82db32c49bd5

  url "https://github.com/MDIsmatullah/CuteCut-Pro/releases/download/v#{version}/CuteCut.Pro-#{version}-arm64.dmg"
  name "CuteCut Pro"
  desc "Professional multitrack video editor with Quranic audio-to-text synchronization"
  homepage "https://github.com/MDIsmatullah/CuteCut-Pro"

  depends_on arch: :arm64

  livecheck do
    url :url
    strategy :github_latest
  end

  app "CuteCut Pro.app"

  zap trash: [
    "~/Library/Application Support/CuteCut Pro",
    "~/Library/Preferences/org.guldasta.cutecutpro.plist",
    "~/Library/Saved Application State/org.guldasta.cutecutpro.savedState",
  ]
end
