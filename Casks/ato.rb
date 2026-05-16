cask "ato" do
  version "2.7.0"

  on_arm do
    sha256 "4b8c6e589a51ed49d9237340a514458df6cb72c32b74a29772c04c44f602cf1e"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.7.0/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "7215443cd5a6a2da95f540eee5a7be71b67dfd2ba9f99f027c9e7627d6ffa1d8"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.7.0/ATO_#{version}_x64.dmg"
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
