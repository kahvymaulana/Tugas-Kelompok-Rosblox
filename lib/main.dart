import 'dart:ui';
import 'package:flutter/material.dart';
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
      title: 'WeStand - Kelompok II',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: Colors.transparent,
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
    return Stack(
      children: [
        // 🌈 Background gradasi seragam semua halaman
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),

        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.black.withOpacity(0.3),
            elevation: 0,
            centerTitle: true,
            flexibleSpace: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(color: Colors.black.withOpacity(0.2)),
              ),
            ),
            title: const Text(
              ' WeStand ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.white,
                letterSpacing: 1.2,
              ),
            ),
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/logo.jpg', // ganti dengan nama file logomu di assets/images/
                  fit: BoxFit.cover,
                )
              ),
            ),
          ),

          // ✨ Transisi antar halaman halus
          body: AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            transitionBuilder: (child, animation) =>
                FadeTransition(opacity: animation, child: child),
            child: _pages[_selectedIndex],
          ),

          // 🚀 Navigasi bawah dengan efek blur & warna senada
          bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
              child: NavigationBar(
                animationDuration: const Duration(milliseconds: 400),
                backgroundColor: Colors.black.withOpacity(0.3),
                height: 70,
                indicatorColor: Colors.blueAccent.withOpacity(0.4),
                labelBehavior:
                    NavigationDestinationLabelBehavior.onlyShowSelected,
                selectedIndex: _selectedIndex,
                onDestinationSelected: (index) =>
                    setState(() => _selectedIndex = index),
                destinations: const [
                  NavigationDestination(
                      icon: Icon(Icons.home_outlined), label: 'Beranda'),
                  NavigationDestination(
                      icon: Icon(Icons.group_outlined), label: 'Anggota'),
                  NavigationDestination(
                      icon: Icon(Icons.video_library_outlined), label: 'Video'),
                  NavigationDestination(
                      icon: Icon(Icons.fastfood_outlined), label: 'Makanan'),
                  NavigationDestination(
                      icon: Icon(Icons.account_circle_outlined), label: 'Akun'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
