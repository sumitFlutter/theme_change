<h1> theme_change package by Sumit Gohil</h1>
theme_change: Seamless Theme Management with Persistent Preferences and (GetX Or Provider)

* What's new :
* You can use this package provided MaterialApp in runApp method
* ThemeMaterialAppGetX for Get
* ThemeMaterialAppProvider for Provider


* ThemeMaterialAppGetX's Properties ->
* ThemeMaterialAppGetX({super.key, this.title, this.routes, this.home, this.initialRoute, this.theme, this.darkTheme, this.debugShowCheckedModeBanner})


* ThemeMaterialAppProvider's Properties ->
* ThemeMaterialAppProvider({super.key, required this.otherProviders, this.routes, this.home, this.initialRoute, this.theme, this.darkTheme, this.title, this.debugShowCheckedModeBanner})


^ Exclusive Feature for GetX User Only
* Now You can Use ThemeObserver Widget Instead of Obx() Widget


* Version 2.0.0:
* Now you can also use Provider package for Theme Management
* Now You can Choose Provider OR GetX Package For Theme Management
* I preferred that using this package with Shared Preference and Get is far better than Shared Preference and Provider because Code's Complexity...

Transform your Flutter app's theme management with theme_change—a robust package designed to effortlessly handle theme changes and persist them across sessions. Leveraging the power of SharedPreferences for permanent storage and (GetX OR Provider) for state management, theme_change provides an elegant solution for dynamic and persistent theming in your applications.<br><br>
<a href="https://github.com/sumitFlutter/theme_change_demo" >👉 Here theme_change package demo Application link (Using GetX Package and Shared Preference package):-</a>  <br>
<a href="https://github.com/sumitFlutter/theme_change_demo2" >👉 Here theme_change package demo Application link (Using Provider Package and Shared Preference package):-</a> <br><br>
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

<h1>Installation:</h1>
<p>
<p>
<h2> Using GetX Package :</h2>
<h4>Add the following to your pubspec.yaml file (Shared Preference and Get are necessary for this package)</h4>
<h3>theme_change: ^2.0.5</h3>
<h3>And Add shared_preferences: to your pubspec.yaml file</h3>
<h3>And Also Add get: to your pubspec.yaml file</h3>
   <br><h2>Then run Flutter pub get</h2>
  <h4>Import This Library in the dart file --></h4>
  <h3> import 'package:theme_change/theme_change.dart';  </h3><br>
<a href="https://github.com/sumitFlutter/theme_change_demo/blob/main/lib/main.dart">Here is Example of main.dart</a>
  </p>
<hr>
<p>
<h2> Using Provider Package :</h2>
<h4>Add the following to your pubspec.yaml file (Shared Preference and Provider are necessary for this package)</h4>
<h3>theme_change: ^2.0.5</h3>
<h3>And Add shared_preferences: to your pubspec.yaml file</h3>
<h3>And Also Add provider: to your pubspec.yaml file</h3>
   <br><h2>Then run Flutter pub get</h2>
  <h4>Import This Library in the dart file --></h4>
  <h3> import 'package:theme_change/theme_change.dart';  </h3><br>
<a href="https://github.com/sumitFlutter/theme_change_demo2/blob/main/lib/main.dart">Here is Example of main.dart</a>
 </p>
</p>
