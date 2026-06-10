cask "ato" do
  version "2.14.3"

  on_arm do
    sha256 "54e3836900c7f121f14f6fe3e950de0ea0a485785a3e01faae39a679b199528d"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.14.3/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "f8b6b9ab74bc66ad27b4b2920587c30ade41626163ca1855c7895a5c4f94f4b4"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.14.3/ATO_#{version}_x64.dmg"
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
