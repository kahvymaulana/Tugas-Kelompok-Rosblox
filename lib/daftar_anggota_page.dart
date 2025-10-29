import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detail_anggota_page.dart';

class DaftarAnggotaPage extends StatelessWidget {
  const DaftarAnggotaPage({super.key});

  final List<Map<String, String>> anggota = const [
    {
      'nama': 'Stoney',
      'gambar': 'assets/images/f1.jpg',
      'npm': '5520123072',
      'kelas': 'IF-B 23',
    },
    {
      'nama': 'Alif Fachrizal Helmi',
      'gambar': 'assets/images/f2.jpg',
      'npm': '5520123042',
      'kelas': 'IF-B 23',
    },
    {
      'nama': 'Muhammad Kahvy Maulana',
      'gambar': 'assets/images/f3.jpg',
      'npm': '5520123063',
      'kelas': 'IF-B 23',
    },
    {
      'nama': 'Fatimah Sari Maulani',
      'gambar': 'assets/images/Fatimah.jpg',
      'npm': '5520123046',
      'kelas': 'IF-B 23',
    },
    {
      'nama': 'Nazwa Aulia Ramadani',
      'gambar': 'assets/images/nazwa.jpg',
      'npm': '5520123064',
      'kelas': 'IF-B 23',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Daftar Anggota',
          style: GoogleFonts.poppins(
            fontSize: 22,
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
        child: ListView.builder(
          padding: const EdgeInsets.fromLTRB(16, 100, 16, 20),
          itemCount: anggota.length,
          itemBuilder: (context, index) {
            final a = anggota[index];
            final gambar = a['gambar'] ?? '';
            final nama = a['nama'] ?? 'Tanpa Nama';
            final npm = a['npm'] ?? 'N/A';
            final kelas = a['kelas'] ?? 'N/A';

            return TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: 1),
              duration: Duration(milliseconds: 500 + (index * 100)),
              builder: (context, value, child) => Opacity(
                opacity: value,
                child: Transform.translate(
                  offset: Offset(0, (1 - value) * 20),
                  child: child,
                ),
              ),
              child: Card(
                color: Colors.white.withOpacity(0.9),
                margin: const EdgeInsets.symmetric(vertical: 8),
                elevation: 6,
                shadowColor: Colors.black45,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage(gambar),
                  ),
                  title: Text(
                    nama,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, 
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                  ),
                  subtitle: Text(
                    'NPM: $npm - $kelas',
                    style: GoogleFonts.poppins(fontSize: 13, color: Colors.black54),
                  ),
                  trailing:
                      const Icon(Icons.arrow_forward_ios_rounded, size: 18),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailAnggotaPage(
                          nama: nama,
                          npm: npm,
                          kelas: kelas,
                          gambar: gambar,
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
