import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailAnggotaPage extends StatelessWidget {
  final String nama;
  final String npm;
  final String kelas;
  final String gambar;

  const DetailAnggotaPage({
    super.key,
    required this.nama,
    required this.npm,
    required this.kelas,
    required this.gambar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "👤 Detail Anggota",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
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
        child: Center(
          child: TweenAnimationBuilder<double>(
            tween: Tween(begin: 0, end: 1),
            duration: const Duration(milliseconds: 700),
            builder: (context, value, child) => Opacity(
              opacity: value,
              child: Transform.scale(scale: value, child: child),
            ),
            child: Card(
              color: Colors.white.withOpacity(0.9),
              margin: const EdgeInsets.all(24),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage(gambar),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      nama,
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "NPM: $npm",
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.black87),
                    ),
                    Text(
                      "Kelas: $kelas",
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.black87),
                    ),
                    const SizedBox(height: 16),
                    const Divider(indent: 40, endIndent: 40),
                    Text(
                      '"Menjadi bagian dari tim yang solid dan kreatif 💡"',
                      style: GoogleFonts.poppins(
                        color: Colors.grey[700],
                        fontStyle: FontStyle.italic,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
