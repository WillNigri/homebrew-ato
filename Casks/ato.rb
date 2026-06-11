cask "ato" do
  version "2.14.6"

  on_arm do
    sha256 "00ac75832cc11df9fac59a381cda57c7fbc2f0db58a5ff75381598bcdd195d06"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.14.6/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "5fa41ba22482db9ece05aaf7a96767cf68bbce813644fb548d34ac25c02be536"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.14.6/ATO_#{version}_x64.dmg"
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
