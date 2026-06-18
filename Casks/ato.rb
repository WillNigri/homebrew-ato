cask "ato" do
  version "2.18.5"

  on_arm do
    sha256 "5b9eeab76d028700dce647664c445caa643b009ffd19f3440804f7e338280eef"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.18.5/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "d7f7fa609f24c8b58d4e77a806cc3abea0a20c55ecb659c49097270a0cc3f7f7"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.18.5/ATO_#{version}_x64.dmg"
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
