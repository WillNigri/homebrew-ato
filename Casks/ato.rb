cask "ato" do
  version "2.4.7"

  on_arm do
    sha256 "409c66c8777e5117fbc92be5920bc8b28e9363a2956d38872c78f738d9750e2e"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.4.7/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "a523e5d8a36b8635d1ac83a80a0fa1710e11cd2c97105ebf18ec11930c677086"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.4.7/ATO_#{version}_x64.dmg"
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
