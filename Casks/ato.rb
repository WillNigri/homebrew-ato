cask "ato" do
  version "1.1.0"

  on_arm do
    sha256 "3209a1bdcd751baf8acb6005efbd193195aa7bb5900f99756b4fdea6a267234e"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v#{version}/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "aa537d5906d2d640c35dcdd891dd548e868ab4c06d5a6ee704d71cc3f5347a20"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v#{version}/ATO_#{version}_x64.dmg"
  end

  name "ATO"
  desc "Multi-runtime control panel for AI coding tools — 6 runtimes, Ollama, projects dashboard"
  homepage "https://agentictool.ai"

  app "ATO.app"

  zap trash: [
    "~/.ato",
    "~/Library/Application Support/ai.agenticsearchoptimization.ato",
    "~/Library/Caches/ai.agenticsearchoptimization.ato",
  ]
end
