part of '../../theme_change.dart';
class ThemeConsumer extends StatefulWidget {
  const ThemeConsumer({super.key, required this.child});
 final Widget child;

  @override
  State<ThemeConsumer> createState() => _ThemeConsumerState();
}

class _ThemeConsumerState extends State<ThemeConsumer> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themeChange, child) {
      return widget.child;
    },);
  }
}
