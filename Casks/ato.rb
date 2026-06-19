cask "ato" do
  version "2.18.11"

  on_arm do
    sha256 "b63f0bb68ee2edeff7e254214a8643d79db334d21975ce365b32b1c79e8dc9ae"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.18.11/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "b8a51eac81f3ed7c76cb5ca5ad88f9cc7ba3ddd57930d5dfb8b29dc3ed674c69"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.18.11/ATO_#{version}_x64.dmg"
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
