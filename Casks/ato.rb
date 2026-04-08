cask "ato" do
  version "0.7.2"

  on_arm do
    sha256 "d41f821d71d0b3db7c48624778dedabadee9a778fb4b72cd2c288c260e49dde2"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v0.8.0/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "e36f3a2b485fab6cdfdc9074d4672ab370d3975a39670e70fc5cc210b98a7476"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v0.8.0/ATO_#{version}_x64.dmg"
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
