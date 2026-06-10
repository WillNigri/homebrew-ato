cask "ato" do
  version "2.14.2"

  on_arm do
    sha256 "c04c8c6c2da7fdb3f64a75eedec22535ebaced92682f81f90e26f3c8ddb4d76b"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.14.2/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "c4f87ba17ae496a8150d1ed4f88b79cdc1be25b9e319d80d9d057da2145ec0e9"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.14.2/ATO_#{version}_x64.dmg"
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
