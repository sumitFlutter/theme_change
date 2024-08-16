library theme_change;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
part 'provider/widgets/theme_material_app.dart';
part 'get/widgets/theme_material_app.dart';
part 'get/widgets/theme_obx.dart';
part 'provider/widgets/theme_consumer.dart';
part 'get/controller/theme_controller.dart';
part 'provider/state/theme_provider.dart';
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

