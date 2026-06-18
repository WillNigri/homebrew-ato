cask "ato" do
  version "2.18.4"

  on_arm do
    sha256 "d20215ae6af4f03cf513be393d3c90ac0c78b9d0e00a2a825340f24714daae31"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.18.4/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "4ff775f2e6202fc28b254936f71c59e5947accffd7317b7ee63f3128c3e25090"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.18.4/ATO_#{version}_x64.dmg"
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
