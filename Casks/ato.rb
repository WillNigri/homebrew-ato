cask "ato" do
  version "2.18.7"

  on_arm do
    sha256 "18af6e313ac40053aa845f7db99382f19a08078be4e07ad54dfdedd6155d08d9"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.18.7/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "ba11f4b1d9389c5c18c52b28d2cd4ee7c855a17952b4698d7b2ee252c8c9c97e"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.18.7/ATO_#{version}_x64.dmg"
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
