# 📱 Copy Of Google News Using API

## 📰 NewsAPI Integration

A sophisticated Flutter news application that mimics the Google News experience. It uses [NewsAPI.org](https://newsapi.org/) to fetch real-time headlines and articles from around the globe, featuring local persistent storage, multi-language support, and optimized performance.

---
## 🖼️ Screenshots

<div align="center"> <img src="https://github.com/CS2487/copy_of_news_google/raw/main/assets/Screen%20shoot/Screenshot_%D9%A2%D9%A0%D9%A2%D9%A5%D9%A0%D9%A2%D9%A0%D9%A4-%D9%A0%D9%A7%D9%A1%D9%A4%D9%A2%D9%A3.jpg" width="24%"> <img src="https://github.com/CS2487/copy_of_news_google/raw/main/assets/Screen%20shoot/Screenshot_%D9%A2%D9%A0%D9%A2%D9%A5%D9%A0%D9%A2%D9%A0%D9%A4-%D9%A0%D9%A7%D9%A1%D9%A5%D9%A1%D9%A5.jpg" width="24%"> <img src="https://github.com/CS2487/copy_of_news_google/raw/main/assets/Screen%20shoot/Screenshot_%D9%A2%D9%A0%D9%A2%D9%A5%D9%A0%D9%A2%D9%A0%D9%A4-%D9%A0%D9%A7%D9%A1%D9%A5%D9%A2%D9%A2.jpg" width="24%"> <img src="https://github.com/CS2487/copy_of_news_google/raw/main/assets/Screen%20shoot/Screenshot_%D9%A2%D9%A0%D9%A2%D9%A5%D9%A0%D9%A2%D9%A0%D9%A4-%D9%A0%D9%A7%D9%A1%D9%A5%D9%A3%D9%A9.jpg" width="24%"> </div>

## ✨ Features

- 🚀 **Real-Time News**: Fetches the latest headlines across multiple categories (General, Business, Technology, Sports, etc.).
- 🔍 **Advanced Search**: Search for specific topics or keywords globally.
- 🔖 **Bookmarks System**: Save your favorite articles to read later. Bookmarks are persisted locally using Shared Preferences.
- 🌍 **Localization**: Full support for **English** and **Arabic** (RTL) with dynamic language switching.
- 📶 **Smart Connectivity**: Real-time internet connection monitoring with automatic refresh logic and user feedback.
- ⚡ **Performance Optimized**:
    - **Background Parsing**: JSON decoding is handled in background isolates (`compute`) to keep the UI buttery smooth.
    - **Image Caching**: Optimized image loading with `cached_network_image` to reduce data usage and improve scrolling.
    - **Local Caching**: API responses are cached locally for 5 minutes to ensure instant loading and reduce API calls.
- 🎨 **Modern UI/UX**:
    - Material 3 Design.
    - Shimmer loading effects for a premium feel.
    - Responsive layout for various screen sizes.
    - Shared transitions and clean card designs.

---

## 🔧 Tech Stack & Architecture

- **Core**: Flutter SDK
- **State Management**: [BLoC (Business Logic Component)](https://pub.dev/packages/flutter_bloc) for clean separation of concerns.
- **Networking**: [HTTP](https://pub.dev/packages/http) for REST API communication.
- **Local Storage**: [Shared Preferences](https://pub.dev/packages/shared_preferences) for caching and user preferences.
- **Data Persistence**: Articles and bookmarks are serialized via `json` and stored locally.
- **Image Handling**: [Cached Network Image](https://pub.dev/packages/cached_network_image) & [Shimmer](https://pub.dev/packages/shimmer).
- **Utility**: [Equatable](https://pub.dev/packages/equatable) for state comparison and [Internet Connection Checker Plus](https://pub.dev/packages/internet_connection_checker_plus).

---

## 🖼️ Screenshots

<div align="center">
  <img src="https://github.com/F24-8-7/copy_of_news_google/raw/main/Screen%20shoot/Screenshot_%D9%A2%D9%A0%D9%A2%D9%A5%D9%A0%D9%A2%D9%A0%D9%A4-%D9%A0%D9%A7%D9%A1%D9%A4%D9%A2%D9%A3.jpg" width="24%">
  <img src="https://github.com/F24-8-7/copy_of_news_google/raw/main/Screen%20shoot/Screenshot_%D9%A2%D9%A0%D9%A2%D9%A5%D9%A0%D9%A2%D9%A0%D9%A4-%D9%A0%D9%A7%D9%A1%D9%A5%D9%A1%D9%A5.jpg" width="24%">
  <img src="https://github.com/F24-8-7/copy_of_news_google/raw/main/Screen%20shoot/Screenshot_%D9%A2%D9%A0%D9%A2%D9%A5%D9%A0%D9%A2%D9%A0%D9%A4-%D9%A0%D9%A7%D9%A1%D9%A5%D9%A2%D9%A2.jpg" width="24%">
  <img src="https://github.com/F24-8-7/copy_of_news_google/raw/main/Screen%20shoot/Screenshot_%D9%A2%D9%A0%D9%A2%D9%A5%D9%A0%D9%A2%D9%A0%D9%A4-%D9%A0%D9%A7%D9%A1%D9%A5%D9%A3%D9%A9.jpg" width="24%">
</div>

---

## 📝 How It Works

1. **Initialization**: On startup, the app checks for a saved locale and initializes the `NewsBloc`, `BookmarkBloc`, and `LocaleBloc`.
2. **Data Fetching**: The `NewsService` attempts to fetch data from the local cache first. If expired or missing, it makes an HTTP call to NewsAPI.
3. **Smooth UI**: While data is fetching, Shimmer UI placeholders are shown. Images are lazy-loaded and cached.
4. **Interaction**: Users can search, filter by category, bookmark articles, or tap to read the full story in an optimized external browser.
5. **Robustness**: If the connection is lost, the app notifies the user and offers a retry mechanism once the connection is restored.

---

## 🔗 Setup

> This project uses the **free tier** from [NewsAPI.org](https://newsapi.org/).  

1. Clone the repository.
2. Run `flutter pub get`.
3. (Optional) Replace the `_apiKey` in `lib/features/data/services/news_service.dart` with your own key.
4. Run `flutter run`.

---

## 👋 Thanks for Visiting!

Feel free to ⭐ star, 🍴 fork, and contribute to the project.  
Pull requests and suggestions are always welcome!

