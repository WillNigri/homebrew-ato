cask "ato" do
  version "2.7.4"

  on_arm do
    sha256 "f74901a3e8ba15c4a51c71a7399d607e44f6701a7e22b625b58c73c4067c9327"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.7.4/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "4d0eed6219da4bef1e7fd2deb1453f8a1447cb5c2c76bb9f2d02542b203ce5ef"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.7.4/ATO_#{version}_x64.dmg"
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
