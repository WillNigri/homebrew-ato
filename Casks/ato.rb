cask "ato" do
  version "1.2.0"

  on_arm do
    sha256 "7fbf0a44491ecf18ad63b4cf35c0a8cd639d7dfb1d1156dad486152ab8e24892"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v#{version}/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "c225f2045af252173b068a2f17bb6124636326e4f32d35b1e9d6ab34fca174b9"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v#{version}/ATO_#{version}_x64.dmg"
  end

  name "ATO"
  desc "Agent Command Center — visual workspace for AI coding tools with 6 runtimes + Ollama"
  homepage "https://agentictool.ai"

  app "ATO.app"

  zap trash: [
    "~/.ato",
    "~/Library/Application Support/ai.agenticsearchoptimization.ato",
    "~/Library/Caches/ai.agenticsearchoptimization.ato",
  ]
end
