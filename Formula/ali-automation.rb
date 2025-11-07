class AliAutomation < Formula
  desc "Automation template for creating Gradle test projects"
  homepage "https://github.com/alirazabrame/homebrew-ali-automation"
  url "https://github.com/alirazabrame/homebrew-ali-automation/archive/v1.0.2.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5" # Generate this from your release
  license "MIT"
  version "1.0.2"

  depends_on "gradle" => :optional
  depends_on "openjdk" => :recommended

  def install
    # Install the main script as the command
    bin.install "scripts/create-project.sh" => "ali-automation"
  end

  test do
    # Test version command
    assert_match "Ali Automation", shell_output("#{bin}/ali-automation version")
    
    # Test help command
    assert_match "Usage:", shell_output("#{bin}/ali-automation help")
  end

  def caveats
    <<~EOS
      🚀 Ali Automation has been installed!

      Usage:
        ali-automation create-project <PROJECT_NAME>  - Create a new Gradle test project
        ali-automation version                        - Show version
        ali-automation help                           - Show help

      Example:
        ali-automation create-project MyTestProject

      Dependencies:
        - Gradle (optional, will use system gradle)
        - Java (recommended, for running tests)

      For more information, visit:
        https://github.com/alirazabrame/homebrew-ali-automation
    EOS
  end
end
