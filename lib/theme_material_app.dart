part of 'theme_change.dart';
class ThemeMaterialAppProvider extends StatefulWidget {
  const ThemeMaterialAppProvider({super.key, required this.providers, this.routes, this.home, this.initialRoute, this.theme, this.darkTheme});
final List<SingleChildWidget> providers;
final Map<String,WidgetBuilder>? routes;
final String? initialRoute;
final Widget? home;
final ThemeData? theme;
final ThemeData? darkTheme;

  @override
  State<ThemeMaterialAppProvider> createState() => _ThemeMaterialAppProviderState();
}

class _ThemeMaterialAppProviderState extends State<ThemeMaterialAppProvider> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.providers.add(ChangeNotifierProvider.value(value: ThemeProvider()..getTheme()));
  }
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: widget.providers,
      child: Consumer<ThemeProvider>(builder: (context, value, child) {
        return widget.home==null&&widget.routes==null?
        MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: widget.theme??ThemeChange.lightTheme,
          darkTheme: widget.darkTheme??ThemeChange.darkTheme,
          themeMode: value.mode,):
            widget.routes!=null&&widget.home!=null?
            MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: widget.theme??ThemeChange.lightTheme,
              darkTheme: widget.darkTheme??ThemeChange.darkTheme,
              themeMode: value.mode,
              home: widget.home,
              routes: widget.routes!,
              initialRoute: widget.initialRoute??"/",):
        widget.home==null&&widget.routes!=null?MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: widget.theme??ThemeChange.lightTheme,
          darkTheme: widget.darkTheme??ThemeChange.darkTheme,
          themeMode: value.mode,
        routes: widget.routes!,
        initialRoute: widget.initialRoute??"/",):
        MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: widget.theme??ThemeChange.lightTheme,
          darkTheme: widget.darkTheme??ThemeChange.darkTheme,
          themeMode: value.mode,
          home: widget.home,)
        ;
      }),
    );
  }
}
