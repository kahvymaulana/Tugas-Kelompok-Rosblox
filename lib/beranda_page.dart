import 'package:flutter/material.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        const SizedBox(height: 10),
        Center(
          child: Hero(
            tag: 'profil',
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/anggota1.jpg'),
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Halo, Kami Kelompok Rosblox 👋',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        const Text(
          'Kami mahasiswa Informatika yang suka fotografi dan ngoding aplikasi mobile menggunakan Flutter 💙',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 30),
        Card(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: const [
                Icon(Icons.lightbulb, size: 50, color: Colors.amber),
                SizedBox(height: 10),
                Text(
                  '“Belajar tanpa henti, karena teknologi terus berkembang.”',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
