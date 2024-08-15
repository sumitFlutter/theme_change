library theme_change;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
part 'theme_material_app.dart';


///Theme Change
class ThemeChange{
  static ThemeController themeController=Get.put(ThemeController());
 static ThemeData lightTheme=ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue,brightness: Brightness.light,),
  );
  static ThemeData darkTheme=ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff5a5a9c),brightness: Brightness.dark,),
  );
 static void saveThemeC({required bool pTheme}) async {
   SharedPreferences s1 = await SharedPreferences.getInstance();
   s1.setBool("themeC", pTheme);
 }

 static Future<bool?> applyThemeC() async {
   SharedPreferences s1 = await SharedPreferences.getInstance();
   s1.getBool("themeC");
   return s1.getBool("themeC");
 }
  static void saveThemeP({required bool pTheme}) async {
    SharedPreferences s1 = await SharedPreferences.getInstance();
    s1.setBool("themeP", pTheme);
  }

  static Future<bool?> applyThemeP() async {
    SharedPreferences s1 = await SharedPreferences.getInstance();
    s1.getBool("themeP");
    return s1.getBool("themeP");
  }

}
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

