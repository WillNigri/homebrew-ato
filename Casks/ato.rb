cask "ato" do
  version "2.18.2"

  on_arm do
    sha256 "9724e10b68c63f3ff3fecd75933827b2da8d34419628393a7c7c88b416c089a6"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v#{version}/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "ca9f43ce91456ad985a14062a1e9ae330422b7a55e2cd9faba8facbb5ff6e169"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v#{version}/ATO_#{version}_x64.dmg"
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
