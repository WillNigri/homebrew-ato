cask "ato" do
  version "2.18.6"

  on_arm do
    sha256 "134ec449b97d9f3d922dac274716e25e29b99a9d8e23a3630e0f70a76d3f565d"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.18.6/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "09e9b08d263713e384cc0353476c586eb8330daead3b4474a27f04d20b23a7df"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.18.6/ATO_#{version}_x64.dmg"
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
