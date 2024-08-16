part of '../../theme_change.dart';
class ThemeProvider with ChangeNotifier{
  bool theme=false;
  ThemeMode mode=ThemeMode.light;
  IconData themeMode=Icons.dark_mode;
  bool pTheme=false;
  void setTheme()
  async {
    theme=!theme;
    ThemeChange.saveThemeP(pTheme: theme);
    pTheme=(await ThemeChange.applyThemeP())!;
    if(pTheme==true)
    {
      mode=ThemeMode.dark;
      themeMode=Icons.light_mode;
    }
    else if(pTheme==false)
    {
      mode=ThemeMode.light;
      themeMode=Icons.dark_mode;
    }
    else
    {
      mode=ThemeMode.light;
      themeMode=Icons.dark_mode;
    }
    notifyListeners();
  }
  void getTheme()
  async{
    if(await ThemeChange.applyThemeP()==null)
    {
      pTheme=false;
      theme=pTheme;
    }
    else
    {
      pTheme=(await ThemeChange.applyThemeP())!;
      theme=pTheme;
    }
    if(pTheme==true)
    {
      mode=ThemeMode.dark;
      themeMode=Icons.light_mode;
    }
    else if(pTheme==false)
    {
      mode=ThemeMode.light;
      themeMode=Icons.dark_mode;
    }
    else
    {
      mode=ThemeMode.light;
      themeMode=Icons.dark_mode;
    }
    notifyListeners();
  }
}
