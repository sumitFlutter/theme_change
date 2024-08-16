part of '../../theme_change.dart';
class ThemeMaterialAppProvider extends StatefulWidget {
  const ThemeMaterialAppProvider({super.key, required this.otherProviders, this.routes, this.home, this.initialRoute, this.theme, this.darkTheme, this.title});
final List<SingleChildWidget> otherProviders;
final Map<String,WidgetBuilder>? routes;
final String? initialRoute,title;
final Widget? home;
final ThemeData? theme;
final ThemeData? darkTheme;

  @override
  State<ThemeMaterialAppProvider> createState() => _ThemeMaterialAppProviderState();
}

class _ThemeMaterialAppProviderState extends State<ThemeMaterialAppProvider> {
  List <SingleChildWidget> otherProvider=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    otherProvider.addAll(List.from(widget.otherProviders));
    otherProvider.add(ChangeNotifierProvider.value(value: ThemeProvider()));
  }
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: otherProvider,
      child: Consumer<ThemeProvider>(builder: (context, value, child) {
        value.getTheme();
        return widget.home==null&&widget.routes==null?
        MaterialApp(
          debugShowCheckedModeBanner: false,
          title: widget.title??'Flutter Demo',
          theme: widget.theme??ThemeChange.lightTheme,
          darkTheme: widget.darkTheme??ThemeChange.darkTheme,
          themeMode: value.mode,):
            widget.routes!=null&&widget.home!=null?
            MaterialApp(
              debugShowCheckedModeBanner: false,
              title: widget.title??'Flutter Demo',
              theme: widget.theme??ThemeChange.lightTheme,
              darkTheme: widget.darkTheme??ThemeChange.darkTheme,
              themeMode: value.mode,
              home: widget.home,
              routes: widget.routes!,
              initialRoute: widget.initialRoute??"/",):
        widget.home==null&&widget.routes!=null?MaterialApp(
          debugShowCheckedModeBanner: false,
          title: widget.title??'Flutter Demo',
          theme: widget.theme??ThemeChange.lightTheme,
          darkTheme: widget.darkTheme??ThemeChange.darkTheme,
          themeMode: value.mode,
        routes: widget.routes!,
        initialRoute: widget.initialRoute??"/",):
        MaterialApp(
          debugShowCheckedModeBanner: false,
          title: widget.title??'Flutter Demo',
          theme: widget.theme??ThemeChange.lightTheme,
          darkTheme: widget.darkTheme??ThemeChange.darkTheme,
          themeMode: value.mode,
          home: widget.home,)
        ;
      }),
    );
  }
}
