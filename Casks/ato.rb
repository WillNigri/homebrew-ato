cask "ato" do
  version "2.18.3"

  on_arm do
    sha256 "6cf7b12b8d44b4aeaf86b46a0ae51a3792d0013a30e6f8d71a3037d06f76afe9"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.18.3/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "5474d6ae502bcd50817fefda12d8c7b911ee98919c71818af2d21e7661a6b69f"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.18.3/ATO_#{version}_x64.dmg"
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
