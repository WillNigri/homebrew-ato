cask "ato" do
  version "2.7.6"

  on_arm do
    sha256 "21366c2e6a9c33ef8fd0f6ce146ce95f60465daae0093fa8be8417491cc49988"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.7.6/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "4370f4462cc81501b47bc1c06cb62e1db3dc8823de41901ef41c80324e22ddd1"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.7.6/ATO_#{version}_x64.dmg"
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
