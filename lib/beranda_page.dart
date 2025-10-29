import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  final List<Map<String, String>> anggota = const [
    {
      'nama': 'Ketua Kelompok Stoney',
      'gambar': 'assets/images/toni.jpg',
      'Hobi': 'Tertarik dengan jaringan komputer dan keamanan siber 🔐',
    },
    {
      'nama': 'Alif Fachrizal Helmi',
      'gambar': 'assets/images/fila.jpg',
      'Hobi': 'Suka BTS 💙 dan menikmati suasana alam 🌿',
    },
    {
      'nama': 'Muhammad Kahvy Maulana',
      'gambar': 'assets/images/kahvy.jpg',
      'Hobi': 'Suka makan 🍜 dan bermain game 🎮',
    },
    {
      'nama': 'Fatimah Sari Maulani',
      'gambar': 'assets/images/Fatimah.jpg',
      'Hobi': 'Suka menulis dan mengembangkan aplikasi produktivitas 📝',
    },
    {
      'nama': 'Nazwa Aulia Ramadani',
      'gambar': 'assets/images/nazwa.jpg',
      'Hobi': 'Senang belajar UI/UX dan membuat aplikasi mobile modern 💡',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          ' Kelompok II ',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.fromLTRB(16, 100, 16, 20),
          itemCount: anggota.length,
          itemBuilder: (context, index) {
            final item = anggota[index];
            return TweenAnimationBuilder<double>(
              duration: Duration(milliseconds: 600 + (index * 100)),
              tween: Tween(begin: 0, end: 1),
              builder: (context, value, child) => Opacity(
                opacity: value,
                child: Transform.translate(
                  offset: Offset(0, (1 - value) * 20),
                  child: child,
                ),
              ),
              child: Card(
                color: Colors.white.withOpacity(0.9),
                margin: const EdgeInsets.symmetric(vertical: 10),
                elevation: 6,
                shadowColor: Colors.black45,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 55,
                        backgroundImage: AssetImage(item['gambar']!),
                      ),
                      const SizedBox(height: 14),
                      Text(
                        'Halo, saya ${item['nama']} 👋',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        item['Hobi']!,
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.grey[800],
                          height: 1.4,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      const Divider(
                        color: Colors.grey,
                        thickness: 0.4,
                        indent: 40,
                        endIndent: 40,
                      ),
                      Text(
                        '"Terus belajar dan berkembang setiap hari 🌱"',
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          color: Colors.grey[600],
                          fontStyle: FontStyle.italic,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
