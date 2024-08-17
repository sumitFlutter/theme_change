part of '../../theme_change.dart';
class ThemeMaterialAppGetX extends StatefulWidget {
  const ThemeMaterialAppGetX({super.key, this.title, this.routes, this.home, this.initialRoute, this.theme, this.darkTheme, this.debugShowCheckedModeBanner});
final Map<String,WidgetBuilder>? routes;
final String? initialRoute,title;
final Widget? home;
final ThemeData? theme;
final ThemeData? darkTheme;
final bool? debugShowCheckedModeBanner;

  @override
  State<ThemeMaterialAppGetX> createState() => _ThemeMaterialAppGetXState();
}

class _ThemeMaterialAppGetXState extends State<ThemeMaterialAppGetX> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ThemeChange.themeController.getTheme();
  }
  @override
  Widget build(BuildContext context) {
    return Obx(() =>
     widget.home==null&&widget.routes==null?
    GetMaterialApp(
      debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner??true,
      title: widget.title??'Flutter Demo',
      theme: widget.theme??ThemeChange.lightTheme,
      darkTheme: widget.darkTheme??ThemeChange.darkTheme,
      themeMode: ThemeChange.themeController.mode.value,):
        widget.routes!=null&&widget.home!=null?
        GetMaterialApp(
          debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner??true,
          title: widget.title??'Flutter Demo',
          theme: widget.theme??ThemeChange.lightTheme,
          darkTheme: widget.darkTheme??ThemeChange.darkTheme,
          themeMode: ThemeChange.themeController.mode.value,
          home: widget.home,
          routes: widget.routes!,
          initialRoute: widget.initialRoute??"/",):
    widget.home==null&&widget.routes!=null?GetMaterialApp(
      debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner??true,
      title: widget.title??'Flutter Demo',
      theme: widget.theme??ThemeChange.lightTheme,
      darkTheme: widget.darkTheme??ThemeChange.darkTheme,
      themeMode: ThemeChange.themeController.mode.value,
    routes: widget.routes!,
    initialRoute: widget.initialRoute??"/",):
    GetMaterialApp(
      debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner??true,
      title: widget.title??'Flutter Demo',
      theme: widget.theme??ThemeChange.lightTheme,
      darkTheme: widget.darkTheme??ThemeChange.darkTheme,
      themeMode: ThemeChange.themeController.mode.value,
      home: widget.home,));
  }
}
