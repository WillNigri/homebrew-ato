cask "ato" do
  version "2.16.0-alpha.1"

  on_arm do
    sha256 "99d4f45c6f3ebab86ba4df3bdd7fac3b7d4139949729cb14096b4e4bb12006d8"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.16.0-alpha.1/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "600b0f8c0bd79f2900a1b9f06829dbac71ebe5d517969ac319d163f48f6574a6"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.16.0-alpha.1/ATO_#{version}_x64.dmg"
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
