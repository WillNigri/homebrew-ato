cask "ato" do
  version "2.12.0"

  on_arm do
    sha256 "2ea6d78b82e4fe9dc896198825b2163580d173122f3901bd0fd8624a04b6804b"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.12.0/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "4fd0ac5d3f82cfafa0db9943cd2b42efe4c92301e82517c725d4f441e6e444ae"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.12.0/ATO_#{version}_x64.dmg"
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
