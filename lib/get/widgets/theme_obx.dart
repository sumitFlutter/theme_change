part of '../../theme_change.dart';
class ThemeObserver extends StatefulWidget {
  const ThemeObserver({super.key, required this.child});
  final Widget child;

  @override
  State<ThemeObserver> createState() => _ThemeObserverState();
}

class _ThemeObserverState extends State<ThemeObserver> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => widget.child,);
  }
}
