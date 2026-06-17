cask "ato" do
  version "2.18.1"

  on_arm do
    sha256 "57044c3a917e012a9da83cea5064fab2cf78fb2b36eda9cbcce582428e42dc63"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.18.1/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "19a67569eca1f92b17e7581004dc324f6ded36c00dfcc6584fa62f9663cf3716"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.18.1/ATO_#{version}_x64.dmg"
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
