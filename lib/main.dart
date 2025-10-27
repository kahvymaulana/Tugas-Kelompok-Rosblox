import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'beranda_page.dart';
import 'daftar_anggota_page.dart';
import 'video_page.dart';
import 'makanan_page.dart';
import 'akun_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Modern',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blueAccent,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blueAccent,
        brightness: Brightness.dark,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    BerandaPage(),
    DaftarAnggotaPage(),
    VideoPage(),
    MakananPage(),
    AkunPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: const Text(
          'Program Flutter UI',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              "https://lms.teknikunsur.net/pluginfile.php/1/theme_moove/logo/1681706361/icon_B_bg.jpg",
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.error, color: Colors.red),
            ),
          ),
        ),
      ),

      // 🌈 animasi transisi antar halaman
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 400),
        transitionBuilder: (child, animation) => FadeTransition(
          opacity: animation,
          child: child,
        ),
        child: _pages[_selectedIndex],
      ),

      // ✨ navigasi bawah bergaya modern
      bottomNavigationBar: NavigationBar(
        animationDuration: const Duration(milliseconds: 400),
        height: 70,
        elevation: 3,
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() => _selectedIndex = index);
        },
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Beranda'),
          NavigationDestination(icon: Icon(Icons.group), label: 'Anggota'),
          NavigationDestination(icon: Icon(Icons.video_library), label: 'Video'),
          NavigationDestination(icon: Icon(Icons.fastfood), label: 'Makanan'),
          NavigationDestination(icon: Icon(Icons.account_circle), label: 'Akun'),
        ],
      ),
    );
  }
}
