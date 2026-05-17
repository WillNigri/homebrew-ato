cask "ato" do
  version "2.7.3"

  on_arm do
    sha256 "742eca0ee9380e9c300316aa2a23cb60c272a8c87b9b8f3dc9bbdca44fd09dd3"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.7.3/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "3fb4ede9aec4229fa7ed24648c1a974aea2c51586c4f12b70047e6215544afa3"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.7.3/ATO_#{version}_x64.dmg"
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
