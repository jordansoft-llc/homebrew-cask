cask "pellucid" do
  arch arm: "arm64", intel: "x64"

  version "1.0.6"
  sha256 arm:   "2e45f6f62252094877384ce129b66599a54bf9e3f801b228d87af1f6d0b07cd7",
         intel: "2df3a08851586e331b19aabfba254706b9394247c57928ee2dba52a10d105b91"

  url "https://downloads.pellucid-pdf.com/releases/#{version}/Pellucid-#{version}-osx-#{arch}.zip"
  name "Pellucid"
  desc "Fast, offline native desktop PDF viewer and editor"
  homepage "https://pellucid-pdf.com/"

  livecheck do
    url "https://pellucid-pdf.com/updates/stable.json"
    strategy :json do |json|
      json.dig("release", "version")
    end
  end

  depends_on macos: ">= :sequoia"

  app "Pellucid.app"

  zap trash: [
    "~/.local/share/Pellucid",
    "~/Library/Preferences/com.lxman.pellucid.plist",
  ]
end
