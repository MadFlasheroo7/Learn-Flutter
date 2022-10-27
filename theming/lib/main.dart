import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ),
  );
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
      overlays: [SystemUiOverlay.top]);

  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        useMaterial3: true,
      ),
      home: const MyHomeScreen(title: 'Flutter Themeing Demo'),
    );
  }
}

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key, required this.title});

  final String title;

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.widgets_outlined),
            label: "Widgets",
            selectedIcon: Icon(Icons.widgets),
          ),
          NavigationDestination(
            icon: Icon(Icons.format_paint_outlined),
            label: "Color Palette",
            selectedIcon: Icon(Icons.format_paint),
          ),
          NavigationDestination(
            icon: Icon(Icons.text_snippet_outlined),
            label: "Typography",
            selectedIcon: Icon(Icons.text_snippet),
          ),
          NavigationDestination(
            icon: Icon(Icons.invert_colors_on_outlined),
            label: "Styles",
            selectedIcon: Icon(Icons.opacity),
          ),
        ],
        onDestinationSelected: (int index) {
          setState(
            () {
              _currentPage = index;
            },
          );
        },
        selectedIndex: _currentPage,
      ),
    );
  }
}
