cask "ato" do
  version "2.7.3"

  on_arm do
    sha256 "4b287cfa30b48058a3c8eb6ecefd1c1def785db51aa666ec6646a000c94318c1"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.7.3/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "3a354dba23f307bca71d50416d2be08816bf817f37cd4d962cd67d3e80906d0d"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.7.3/ATO_#{version}_x64.dmg"
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
