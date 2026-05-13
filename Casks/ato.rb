cask "ato" do
  version "2.3.51"

  on_arm do
    sha256 "c3b6e8de8dd8a40ee5800b9798435a89b6c45826d0e03cf545013369e008c76b"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v#{version}/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "8b8a8b3c7441a938cdb412fe67ce42fc257dce471b89654c297aff52dbdb0921"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v#{version}/ATO_#{version}_x64.dmg"
  end

  name "ATO"
  desc "Local war room for humans and LLMs — multi-LLM decision sessions with audit trail"
  homepage "https://agentictool.ai"

  app "ATO.app"

  zap trash: [
    "~/.ato",
    "~/Library/Application Support/ai.agenticsearchoptimization.ato",
    "~/Library/Caches/ai.agenticsearchoptimization.ato",
  ]
end
