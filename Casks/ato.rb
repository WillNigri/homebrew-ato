cask "ato" do
  version "2.15.1"

  on_arm do
    sha256 "7052e86d13f2c219b114305632822f7e85390661efce41e7fd48aa002d12fa8b"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.15.1/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "1b0e7625bdc0905fbd0a1746c86adfbc01b29a95cd426cdddae0ce88cfd7bace"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.15.1/ATO_#{version}_x64.dmg"
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
