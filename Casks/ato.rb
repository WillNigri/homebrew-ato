cask "ato" do
  version "2.6.1"

  on_arm do
    sha256 "eaeff917e50ca5f6219d1f2a4616b3a00eaa86e445daf440702e6716c47ed1cc"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.6.1/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "8e0dc3c4d70f05277668da2e9373847a2dd085f83b2290fe96d07bbbe1d8f49c"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.6.1/ATO_#{version}_x64.dmg"
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
