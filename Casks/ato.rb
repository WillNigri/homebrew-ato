cask "ato" do
  version "2.4.6"

  on_arm do
    sha256 "6109087cee6a5c348c701d9e4819332e1b62f997860891d5c81363ce8a33fe06"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.4.6/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "25d619860e531839b5ec78ce30c02e3e6bdfb8e154c7bbe23139eae2833a7bd0"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.4.6/ATO_#{version}_x64.dmg"
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
