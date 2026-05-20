cask "ato" do
  version "2.7.7"

  on_arm do
    sha256 "b62bbd21872983bb333f65493ed90468b5d91faecff4576f97d275b42147dbec"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.7.7/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "e6b91b486a1d38aa7c740172a45c5675ca8039b88cda1c9c4adae1b30e4f74c5"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.7.7/ATO_#{version}_x64.dmg"
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
