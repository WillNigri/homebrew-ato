cask "ato" do
  version "2.15.2"

  on_arm do
    sha256 "a209939e51caf87780de26c6958db648100320b27740eae9d20123129f5cbace"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.15.2/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "d0870f9addd2fe7ce27601eecbbc6c2ee7de7dfe827702a5d4ea658b699a198b"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.15.2/ATO_#{version}_x64.dmg"
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
