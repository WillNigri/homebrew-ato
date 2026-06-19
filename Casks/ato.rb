cask "ato" do
  version "2.18.8"

  on_arm do
    sha256 "0360beff7d4fbfdba76ad1383a5c568e87ab65d3c79f25b937cfee6ecb246a7e"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.18.8/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "7d14f79a99186c2d072c6cab777fe004b856c9642c5e205346c7be2aae46431e"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.18.8/ATO_#{version}_x64.dmg"
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
