# ali-automation

Automation template for creating Gradle test projects with IntelliJ support and Java 11.

## Installation

### Using Homebrew (macOS/Linux)

1. **Tap this repository:**

   ```bash
   brew tap alirazabrame/ali-automation
   ```

2. **Install the formula:**
   ```bash
   brew install ali-automation
   ```

### Manual Installation

Download the latest release from [GitHub Releases](https://github.com/alirazabrame/homebrew-ali-automation/releases).

## Usage

Create a new Gradle test project:

```bash
ali-automation create-project MyTestProject
```

Show version:

```bash
ali-automation version
```

Show help:

```bash
ali-automation help
```

## Features

- 🚀 Creates IntelliJ-ready Gradle projects
- ☕ Java 11 support
- 📦 Pre-configured with Allure reporting
- 🧪 JUnit 5 testing framework
- 📊 Gradle 6.7 build system
- 🎯 Customizable package names

## Dependencies

- **Gradle** (optional) - Uses system gradle if available
- **Java 11+** (recommended) - For running tests

## License

MIT License
