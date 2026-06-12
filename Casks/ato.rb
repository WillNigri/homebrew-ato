cask "ato" do
  version "2.15.6"

  on_arm do
    sha256 "645c248ef89b676d85a1e62a20887dc372db74b3e7686b345f213f180a166f86"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.15.6/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "eb2a50e93d48eb1ec3f17e7f644478eda5faf6b0503c619f3ab23a324ccbaeed"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.15.6/ATO_#{version}_x64.dmg"
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
