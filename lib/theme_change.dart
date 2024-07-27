library theme_change;

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';


///Theme Change
class ThemeChange{
  static ThemeController themeController=Get.put(ThemeController());
 static ThemeData lightTheme=ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue,brightness: Brightness.light,),
  );
  static ThemeData darkTheme=ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow,brightness: Brightness.dark,),
  );
 static void saveTheme({required bool pTheme}) async {
   SharedPreferences s1 = await SharedPreferences.getInstance();
   s1.setBool("theme", pTheme);
 }

 static Future<bool?> applyTheme() async {
   SharedPreferences s1 = await SharedPreferences.getInstance();
   s1.getBool("theme");
   return s1.getBool("theme");
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
    ThemeChange.saveTheme(pTheme: theme.value);
    pTheme.value=(await ThemeChange.applyTheme())!;
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
    if(await ThemeChange.applyTheme()==null)
    {
      pTheme.value=false;
      theme.value=pTheme.value;
    }
    else
    {
      pTheme.value=(await ThemeChange.applyTheme())!;
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

