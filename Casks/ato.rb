cask "ato" do
  version "2.7.1"

  on_arm do
    sha256 "943266a85d44da98d14e799597174701cfc50513f7726a63c098d17437d530e6"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.7.1/ATO_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "41756a8a57cde19d24ed4fc7ca43b17cb2d82963a5a778e3bf18527af51cbc86"
    url "https://github.com/WillNigri/Agentic-Tool-Optimization/releases/download/v2.7.1/ATO_#{version}_x64.dmg"
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
