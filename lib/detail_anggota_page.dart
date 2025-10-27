import 'package:flutter/material.dart';

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
      appBar: AppBar(title: Text('Profil $nama')),
      body: Center(
        child: Card(
          elevation: 6,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(radius: 50, backgroundImage: AssetImage(gambar)),
                const SizedBox(height: 12),
                Text(
                  nama,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text('Art Director', style: TextStyle(color: Colors.grey[600])),
                const SizedBox(height: 16),
                const Divider(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('ID No   : 00000000'),
                      Text('NPM     : $npm'),
                      Text('Kelas   : $kelas'),
                      Text('DOB     : 01/01/2000'),
                      Text('Email   : email@example.com'),
                      Text('Phone   : +62812345678'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
