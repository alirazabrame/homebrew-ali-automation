class IcmAutomation < Formula
  desc "ICM Automation tool for creating Gradle test projects"
  homepage "https://github.com/alirazabrame/icm-automation"
  url "https://github.com/alirazabrame/icm-automation/archive/v1.0.0.tar.gz"
  sha256 "851d49ca67f7ca1f6186a1b12fc956320ba83cdee078a3e57218eeaef58c99ae" # Generate this from your release
  license "MIT"

  depends_on "gradle" => :optional
  depends_on "openjdk" => :recommended

  def install
    # Install the main script as the command
    bin.install "scripts/create-project.sh" => "icm-automation"
  end

  test do
    # Test version command
    assert_match "ICM Automation", shell_output("#{bin}/icm-automation version")
    
    # Test help command
    assert_match "Usage:", shell_output("#{bin}/icm-automation help")
  end

  def caveats
    <<~EOS
      🚀 ICM Automation has been installed!

      Usage:
        icm-automation create-project <PROJECT_NAME>  - Create a new Gradle test project
        icm-automation version                        - Show version
        icm-automation help                           - Show help

      Example:
        icm-automation create-project MyTestProject

      Dependencies:
        - Gradle (optional, will use system gradle)
        - Java (recommended, for running tests)

      For more information, visit:
        https://github.com/alirazabrame/icm-automation
    EOS
  end
end