cask "ato" do
  version "2.18.9"

  on_arm do
    sha256 "41483e120403f7f0287f8e606b31c6c5dba43f068c140501c741085b8ad6a997"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.18.9/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "eda7a7069689153e040be9406a5f9fe194051d283b5e84e2374d3c35c6b5dba4"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.18.9/ATO_#{version}_x64.dmg"
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
