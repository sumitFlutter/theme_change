part of '../../theme_change.dart';
class ThemeController extends GetxController{
  RxBool theme=false.obs;
  Rx<ThemeMode> mode=ThemeMode.light.obs;
  Rx<IconData> themeMode=Icons.dark_mode.obs;
  RxBool pTheme=false.obs;
  void setTheme()
  async {
    theme.value=!theme.value;
    ThemeChange.saveThemeC(pTheme: theme.value);
    pTheme.value=(await ThemeChange.applyThemeC())!;
    if(pTheme.value==true)
    {
      mode.value=ThemeMode.dark;
      themeMode.value=Icons.light_mode;
    }
    else if(pTheme.value==false)
    {
      mode.value=ThemeMode.light;
      themeMode.value=Icons.dark_mode;
    }
    else
    {
      mode.value=ThemeMode.light;
      themeMode.value=Icons.dark_mode;
    }
  }
  void getTheme()
  async{
    if(await ThemeChange.applyThemeC()==null)
    {
      pTheme.value=false;
      theme.value=pTheme.value;
    }
    else
    {
      pTheme.value=(await ThemeChange.applyThemeC())!;
      theme.value=pTheme.value;
    }
    if(pTheme.value==true)
    {
      mode.value=ThemeMode.dark;
      themeMode.value=Icons.light_mode;
    }
    else if(pTheme.value==false)
    {
      mode.value=ThemeMode.light;
      themeMode.value=Icons.dark_mode;
    }
    else
    {
      mode.value=ThemeMode.light;
      themeMode.value=Icons.dark_mode;
    }
  }
}
