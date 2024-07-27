<h1> theme_change package by Sumit Gohil</h1>
theme_change: Seamless Theme Management with Persistent Preferences and GetX

Transform your Flutter app's theme management with theme_change—a robust package designed to effortlessly handle theme changes and persist them across sessions. Leveraging the power of SharedPreferences for permanent storage and GetX for state management, theme_change provides an elegant solution for dynamic and persistent theming in your applications.

Key Features:

Persistent Theme Storage: Automatically saves user theme preferences using SharedPreferences, ensuring a consistent look every time they launch your app.
Easy Integration with GetX: Utilizes GetX for state management, offering a reactive and efficient way to manage and switch themes.
Simple API: A clean and intuitive API that makes it easy to toggle between light and dark modes or implement custom themes with minimal setup.
Seamless UX: Enhance user experience with smooth theme transitions and persistent settings, making your app feel more personalized and user-friendly.
How It Works:

Integrate: Add theme_change to your pubspec.yaml file and get started with just a few lines of code.
Configure: Set up your themes and preferences with ease, using the provided methods and configuration options.
Enjoy: Watch as theme_change handles theme persistence and state management, allowing you to focus on building your app’s features.
Whether you're developing a new app or enhancing an existing one, theme_change offers a streamlined approach to managing user themes and preferences. Experience the convenience of persistent theming and reactive state management with theme_change!

Installation:
Add the following to your pubspec.yaml file:

dependencies:
  theme_change:
    git:
      url: git://github.com/sumitFlutter/theme_change.git
   shared_preferences: ^2.2.3
   get: ^4.6.6
   Then run Flutter pub get
