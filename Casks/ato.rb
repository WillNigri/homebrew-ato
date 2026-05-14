cask "ato" do
  version "2.4.8"

  on_arm do
    sha256 "fb31cfa32ab8b9a58c689dc109edfdd7029ff7835bc1764c18904efe9505ef82"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.4.8/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "bd4d70c14457bf78ac93770124827a3c66b4e18e169f561714c297d0da486050"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.4.8/ATO_#{version}_x64.dmg"
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
