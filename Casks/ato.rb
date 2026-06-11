cask "ato" do
  version "2.15.5"

  on_arm do
    sha256 "da3b9b247ef0d36672c656feb4027b3357de4ad6fbb3ef0d7c5dfc22e346a7ee"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.15.5/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "394f90aa00b762a1ba617988ce1cdbdd535d66064d8ab0a3698ef84962dcd02f"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.15.5/ATO_#{version}_x64.dmg"
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
