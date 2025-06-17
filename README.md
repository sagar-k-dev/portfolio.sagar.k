# Portfolio Website

A modern, responsive portfolio website built with Flutter Web. This portfolio showcases my professional experience, projects, and skills in an interactive and engaging way.

## 🌟 Features

- Responsive design that works on all devices
- Interactive UI elements
- Project showcase with detailed descriptions
- Skills and technology expertise display
- Contact information and social media links
- Support for multiple languages
- RTL support

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (latest version)
- Git
- A code editor (VS Code, Android Studio, etc.)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/sagar-k-dev/portfolio.sagar.k.git
   cd portfolio
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the project locally:
   ```bash
   flutter run -d chrome
   ```

## 📦 Updating the Web Build

To update the web build for deployment on GitHub Pages, follow these steps:

1. Clean the existing build:
   ```bash
   flutter clean
   ```

2. Get fresh dependencies:
   ```bash
   flutter pub get
   ```

3. Build the web version in release mode:
   ```bash
   flutter build web --base-href="/portfolio.sagar.k/"
   ```

4. Copy the build files to the docs folder:
   ```bash
   rm -rf docs && cp -r build/web docs
   ```

5. Commit and push the changes:
   ```bash
   git add .
   git commit -m "Update web build with latest changes"
   git push origin main
   ```

After pushing the changes, GitHub Pages will automatically deploy the new version. The website will be available at: https://sagar-k-dev.github.io/portfolio.sagar.k/

## 🛠️ Built With

- Flutter Web
- GetX State Management
- MVVM Architecture
- Responsive Framework

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 📧 Contact

Sagar K - sagarkdev7@gmail.com
Project Link: https://github.com/sagar-k-dev/portfolio.sagar.k