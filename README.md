# 🚀 Ali Automation

A powerful CLI tool for creating ready-to-use Gradle test automation projects with Selenium, JUnit 5, and Allure reporting. Perfect for quickly scaffolding test automation frameworks with IntelliJ IDEA support.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform: macOS](https://img.shields.io/badge/Platform-macOS-blue.svg)](https://www.apple.com/macos/)

## ✨ Features

- 🎯 **One-Command Setup** - Generate complete test automation projects instantly
- 🔧 **IntelliJ IDEA Ready** - Pre-configured `.iml` and `.idea` files for seamless IDE integration
- ☕ **Java 11 Support** - Automatically configures Java 11 environment
- 🧪 **Modern Testing Stack**:
  - JUnit 5 (Jupiter) for test execution
  - Selenium WebDriver 4.6.0 for browser automation
  - Allure 2.13.6 for beautiful test reports
- 📦 **Pre-configured Dependencies**:
  - Apache Commons CSV for data-driven testing
  - Apache Commons IO for file operations
  - JSON parsing utilities
  - Informix JDBC driver
- 🎨 **Customizable Package Structure** - Define your own package names
- 📊 **Gradle 6.7 Build System** - With wrapper included (no Gradle installation required)
- 📁 **Complete Project Structure** - Includes test classes, data sources, and helper utilities

## 📋 Requirements

- **macOS** (macOS Monterey or later recommended)
- **Homebrew** package manager
- **Java 11** (automatically installed if not present via `openjdk@11`)

> **Note:** This tool is designed specifically for macOS and uses macOS-specific features. Windows and Linux are not currently supported.

## 🔧 Installation

### Using Homebrew (Recommended)

1. **Tap this repository:**

   ```bash
   brew tap alirazabrame/ali-automation
   ```

2. **Install the formula:**

   ```bash
   brew install ali-automation
   ```

3. **Verify installation:**
   ```bash
   ali-automation version
   ```

### Manual Installation (macOS only)

1. Download the latest release from [GitHub Releases](https://github.com/alirazabrame/homebrew-ali-automation/releases)
2. Extract the archive
3. Run the script directly:
   ```bash
   ./scripts/create-project.sh create-project MyProject
   ```

## 🚀 Usage

### Create a New Project

```bash
ali-automation create-project LoginModule
```

You'll be prompted to enter a package name (e.g., `com.mycompany.automation`). If you skip this, it defaults to `com.i2c.automation.aliapp`.

### Example Output

```
📦 Enter the package name for your project (e.g., com.i2c.automation.icm):
com.mycompany.tests

✅ Package set to: com.mycompany.tests
📁 Source path: src/test/java/com/mycompany/tests/loginmodule
🚀 Creating Gradle project 'LoginModule'...
🧩 Setting up Java 11 environment...
✅ Java 11 active: openjdk version "11.0.18" 2023-01-17 LTS
🛠  Setting up Gradle wrapper version 6.7...
🧩 Creating IntelliJ IDEA configuration...
✅ Project 'LoginModule' created successfully!
📁 Location: /Users/yourname/current-directory/LoginModule
📦 Package: com.mycompany.tests.loginmodule
```

### Other Commands

**Show version:**

```bash
ali-automation version
```

**Show help:**

```bash
ali-automation help
```

## 📂 Generated Project Structure

```
MyProject/
├── .idea/                          # IntelliJ IDEA configuration
│   ├── modules.xml
│   ├── misc.xml
│   ├── vcs.xml
│   └── compiler.xml
├── src/
│   ├── main/
│   │   ├── java/
│   │   └── resources/
│   └── test/
│       ├── java/
│       │   └── com/your/package/myproject/
│       │       ├── MyProject.java           # Main test class
│       │       ├── MyProjectDataSource.java # Data model
│       │       ├── MyProjectScreen.java     # Page Object
│       │       └── Navigation.java          # Navigation helper
│       └── resources/
├── cleanup/
│   └── MyProject_CleanUp.sql      # SQL cleanup scripts
├── datasource/
│   └── MyProject_DataSource.csv   # Test data CSV
├── gradle/
│   └── wrapper/
│       └── gradle-wrapper.properties
├── build.gradle                    # Gradle build configuration
├── settings.gradle                 # Gradle settings
├── gradlew                         # Gradle wrapper (Unix/macOS)
├── gradlew.bat                     # Gradle wrapper (not used on macOS)
└── MyProject.iml                   # IntelliJ module file
```

## 🎯 Generated Test Class Features

Each generated project includes:

- **Parameterized Tests** - Data-driven testing with CSV data sources
- **WebDriver Setup** - Pre-configured ChromeDriver with best practices
- **Allure Integration** - Automatic screenshot attachment on test completion
- **Page Object Pattern** - Screen classes for better test organization
- **Navigation Helpers** - Reusable navigation utilities

## 🔨 Building and Running Tests

After creating a project:

```bash
cd MyProject

# Run tests
./gradlew test

# Generate Allure report
./gradlew allureReport

# Open Allure report
./gradlew allureServe
```

## 🛠️ Customization

### Update ChromeDriver Path

Edit the generated test class and update the ChromeDriver path:

```java
System.setProperty("webdriver.chrome.driver", "/path/to/your/chromedriver");
```

### Modify Dependencies

Edit `build.gradle` to add or update dependencies:

```gradle
dependencies {
    testImplementation 'your:dependency:version'
}
```

### Configure Test Data

Edit the CSV file in `datasource/` folder to add your test data.

## 🐛 Troubleshooting

### Gradle Command Not Found

The script uses Gradle wrapper, so you don't need Gradle installed. If you see errors, ensure the wrapper is executable:

```bash
chmod +x gradlew
```

### Java Version Issues

Ensure Java 11 is installed and active:

```bash
java -version
```

If needed, install it via Homebrew:

```bash
brew install openjdk@11
```

### IntelliJ Not Recognizing Project

1. Open IntelliJ IDEA
2. Select "Open" (not "Import")
3. Navigate to the project folder
4. Select the folder containing `.iml` file
5. Click "Open"

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👤 Author

**Ali Raza**

- GitHub: [@alirazabrame](https://github.com/alirazabrame)

## 🙏 Acknowledgments

- Built with ❤️ for test automation engineers
- Inspired by the need for rapid test framework scaffolding
- Uses industry-standard tools and best practices

---

**Happy Testing! 🧪✨**
