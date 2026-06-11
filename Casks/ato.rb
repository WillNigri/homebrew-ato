cask "ato" do
  version "2.15.0"

  on_arm do
    sha256 "4707efa57c5314be33fe1676805d36ebc9c4f944e8987d9d10695707d59117d9"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.15.0/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "e24210b54be6ff8709e343744f6ed329a3a7ca34300df4a83b4578554f5de45b"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.15.0/ATO_#{version}_x64.dmg"
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
