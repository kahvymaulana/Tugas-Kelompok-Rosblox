import 'package:flutter/material.dart';
import 'detail_anggota_page.dart';

class DaftarAnggotaPage extends StatelessWidget {
  const DaftarAnggotaPage({super.key});

  final List<Map<String, String>> anggota = const [
    {'nama': 'Kahvy', 'npm': '12345678', 'kelas': 'IF A', 'gambar': 'assets/images/anggota1.jpg'},
    {'nama': 'Alif', 'npm': '87654321', 'kelas': 'IF A', 'gambar': 'assets/images/anggota2.jpg'},
    {'nama': 'Stoney', 'npm': '87654321', 'kelas': 'IF A', 'gambar': 'assets/images/anggota2.jpg'},
    {'nama': 'Nazwa', 'npm': '11223344', 'kelas': 'IF A', 'gambar': 'assets/images/anggota3.jpg'},
    {'nama': 'Fatimah', 'npm': '44332211', 'kelas': 'IF A', 'gambar': 'assets/images/anggota4.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: anggota.length,
      itemBuilder: (context, index) {
        final a = anggota[index];
        return Card(
          elevation: 3,
          margin: const EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(a['gambar']!),
              radius: 25,
            ),
            title: Text(a['nama']!, style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('NPM: ${a['npm']} - ${a['kelas']}'),
            // ✅ onTap diletakkan di sini
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailAnggotaPage(
                    nama: a['nama']!,
                    npm: a['npm']!,
                    kelas: a['kelas']!,
                    gambar: a['gambar']!,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
