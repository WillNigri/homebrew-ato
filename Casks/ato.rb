cask "ato" do
  version "2.18.3"

  on_arm do
    sha256 "93c9ccf8db3824120990207a4b98a6e5fcf8b441a91a4546a2c044490a58824a"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v#{version}/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "3e0b3de059abf13303072e8a4a2c77736dbfd640fe91651171d3f6112fe95f59"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v#{version}/ATO_#{version}_x64.dmg"
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
