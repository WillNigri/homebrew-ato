cask "ato" do
  version "2.7.4"

  on_arm do
    sha256 "bafe20f634608f38123419ac1be8fe81b5106193070a3a52b36a5bb2fbf04540"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.7.4/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "6912bd64f6f78e0380a404e249fd60b2881ad1a48a2a33122d0f31642b6ecff3"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.7.4/ATO_#{version}_x64.dmg"
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
