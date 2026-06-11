cask "ato" do
  version "2.15.3"

  on_arm do
    sha256 "c8cab2cf68daf1ae6229c8bd952c271d5166a57f55f04967f967df2b22c6e0bc"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.15.3/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "6e8b872a111a6148aaee743926f5746509d62d050568cc6976615ce7d1391bf8"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.15.3/ATO_#{version}_x64.dmg"
  end

  name "ATO"
  desc "Control panel for AI coding tools — manage skills, agents, and LLM configurations"
  homepage "https://agentictool.ai"

  app "ATO.app"

  zap trash: [
    "~/.ato",
    "~/Library/Application Support/ai.agenticsearchoptimization.ato",
    "~/Library/Caches/ai.agenticsearchoptimization.ato",
  ]
end
