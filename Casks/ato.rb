cask "ato" do
  version "2.6.0"

  on_arm do
    sha256 "1cf64b40598486927d557d0edeb106a7be30cf58cc7af3a0ca29e757be8d2059"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.6.0/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "d0f142ac15159892b62b0634a73de4ad1e8660b0cafd42e77d7cf3a37cc957c5"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.6.0/ATO_#{version}_x64.dmg"
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
