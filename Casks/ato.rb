cask "ato" do
  version "2.18.2"

  on_arm do
    sha256 "5b201c9102c53d81dcb125f0cc25f544f82882f45f5858b1a8458033693ceb73"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.18.2/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "de312ac324e840051c76ac0e943cc49282d089c03661a1da47fdf61c084425a5"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.18.2/ATO_#{version}_x64.dmg"
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
