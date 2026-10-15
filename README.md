# Network Layering - Clean Architecture in Swift

Architectural showcase demonstrating an enterprise-ready networking stack in Swift, using the Repository Pattern, Endpoint configurations, and generic decodable responses.

---

## 🛠️ Tech Stack & Architecture
`Swift` `URLSession` `Repository Pattern` `Dependency Injection` `Unit Testing`

- **Platform:** iOS 16.0+
- **Language:** Swift 5.10+
- **Framework:** Swift
- **Architecture:** MVVM / Clean Architecture

---

## ✨ Key Features
- Clean separation between API contracts, network execution, and presentation repositories
- Generic decodable mapping with type-safe endpoint enum definitions
- Comprehensive UserRepository and protocol contracts for effortless test doubles
- Structured error propagation and network reachability awareness

---

## 🚀 Getting Started

### Prerequisites
- macOS Sonoma or newer
- Xcode 15.0 or newer
- iOS Simulator or physical device running iOS 16+

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/Devendrakumar16/Network-Layering-Architecture-iOS.git
   cd Network-Layering-Architecture-iOS
   ```
2. Open the project in Xcode:
   ```bash
   open *.xcodeproj 2>/dev/null || open *.xcworkspace
   ```
3. If CocoaPods is used:
   ```bash
   pod install
   open *.xcworkspace
   ```
4. Select your target simulator (e.g., iPhone 15 Pro) and press `Cmd + R` to build and run!

---

## 👨‍💻 Author
- **Devendra Kumar** ([@Devendrakumar16](https://github.com/Devendrakumar16))

---

## 📄 License
This project is open source and available under the [MIT License](LICENSE).
