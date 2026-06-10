cask "ato" do
  version "2.14.5"

  on_arm do
    sha256 "6fbb678bb5a002afcbcce9dc73abb9114c3e041687de9f349866b5ab66cea871"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.14.5/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "f56ab6fdfaf62c437574991673532435daf9e8d4620dd68aeafed23c92f76d3f"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.14.5/ATO_#{version}_x64.dmg"
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
