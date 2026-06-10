cask "ato" do
  version "2.14.1"

  on_arm do
    sha256 "59fb156250ee7bc765c5f866ea09fdb38a8e05c9fda11b5ed8356982e396a584"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.14.1/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "cdbb1786237a4b9a0389cd5d9dc1a333e6a318a7b9135f8bfb01075f7d88ff04"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.14.1/ATO_#{version}_x64.dmg"
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
