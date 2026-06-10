cask "ato" do
  version "2.14.0"

  on_arm do
    sha256 "847268188ff3782c401123035abe508278294e33593e61f895906773b54687b5"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.14.0/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "cdbd35922f6ff2376778ee71ec533d450e41bddf68087931d4736397fbcb6067"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.14.0/ATO_#{version}_x64.dmg"
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
