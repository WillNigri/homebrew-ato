cask "ato" do
  version "2.14.4"

  on_arm do
    sha256 "5cfa36f375369651defdbb6e785d6eaad84e3cfc21a222546d7266b61f48e055"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.14.4/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "de9863d834a1c80cd468ebfcd7bec82abb8e0bcc2d7b2dece9584850cbda7bb2"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.14.4/ATO_#{version}_x64.dmg"
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
