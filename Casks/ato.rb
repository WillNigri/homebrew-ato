cask "ato" do
  version "2.7.2"

  on_arm do
    sha256 "b6ac51d0d9fcde51adb4a925108b43705b120e78cbbf90e8b95332aa3165c1a5"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.7.2/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "2daae386ca0f4eac2790d1dc1026dcdf5f88fa3fcb38af33a491156485d271ab"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.7.2/ATO_#{version}_x64.dmg"
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
