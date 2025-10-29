import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MakananPage extends StatelessWidget {
  const MakananPage({super.key});

  final List<Map<String, dynamic>> makanan = const [
    {
      'nama': 'Sate Maranggi Cianjur',
      'gambar': 'https://thumb.viva.id/vivacianjur/665x374/2025/09/04/68b9a7f313fe5-sate-maranggi_cianjur.jpg',
      'resep': '''
      Bahan-bahan:
      - 500 gram daging sapi (potong dadu)
      - 3 sdm kecap manis
      - 2 sdm minyak goreng
      - 3 siung bawang putih, haluskan
      - 1 sdm ketumbar bubuk
      - ½ sdt garam
      - ½ sdt merica bubuk

      Langkah-langkah:
      1. Campur semua bumbu, masukkan daging.
      2. Diamkan 30 menit agar bumbu meresap.
      3. Tusukkan dan bakar hingga matang.
      4. Sajikan dengan sambal oncom khas Cianjur.
      '''
    },
    {
      'nama': 'Nasi Pepes Ikan Mas',
      'gambar': 'https://asset.kompas.com/crops/jtonZRepdYfZhXcejCAeiphrLN0=/0x0:1000x667/750x500/data/photo/2021/03/19/60538b2063395.jpg',
      'resep': '''
      Bahan-bahan:
      - 2 ekor ikan mas ukuran sedang
      - 4 lembar daun pisang
      - Bumbu halus: bawang merah, putih, jahe, kunyit, cabai
      - Serai, garam, minyak goreng

      Langkah-langkah:
      1. Tumis bumbu hingga harum.
      2. Lumuri ikan, tambahkan serai.
      3. Bungkus daun pisang, kukus 40 menit.
      4. Sajikan hangat.
      '''
    },
    {
      'nama': 'Laksa Cianjur',
      'gambar': 'https://cianjur.co/news/wp-content/uploads/2025/09/tauco-khas-cianjur-di-sebuah-resto.jpg',
      'resep': '''
      Bahan-bahan:
      - 100 gr bihun, 1 liter santan, ayam suwir
      - Bumbu halus: bawang, kunyit, kemiri, ketumbar

      Langkah-langkah:
      1. Tumis bumbu, masukkan santan.
      2. Tambah ayam dan bihun.
      3. Sajikan dengan bawang goreng.
      '''
    },
    {
      'nama': 'Manisan Cianjur',
      'gambar': 'https://akcdn.detik.net.id/community/media/visual/2023/12/10/manisan-buah-cianjur-di-jalan-dr-muwardi-1_169.jpeg?w=700&q=90',
      'resep': '''
      Bahan-bahan:
      - 500 gr buah pala muda
      - 300 gr gula pasir, 1 liter air, garam

      Langkah-langkah:
      1. Rendam buah dalam air garam 1 jam.
      2. Rebus air & gula, masukkan buah.
      3. Masak hingga kental, tiriskan.
      '''
    },
    {
      'nama': 'Asinan Cianjur',
      'gambar': 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/92754196-083c-418d-a44b-8b71ac5419d6_Go-Biz_20250113_105409.jpeg',
      'resep': '''
      Bahan-bahan:
      - Mentimun, nanas, kol iris
      - Cabai, bawang putih, cuka, gula, garam

      Langkah-langkah:
      1. Haluskan cabai & bawang.
      2. Rebus bumbu, siram ke buah.
      3. Sajikan segar.
      '''
    },
    {
      'nama': 'Geco Cianjur (Toge Tauco)',
      'gambar': 'https://cdns.klimg.com/merdeka.com/i/w/news/2020/06/25/1191656/540x270/mencicipi-lezatnya-geco-kuliner-khas-cianjur-yang-unik-dan-legendaris.jpg',
      'resep': '''
      Bahan-bahan:
      - 100 gram toge rebus
      - 2 potong tahu goreng, potong dadu
      - 1 buah kentang rebus, potong kecil
      - 1 sendok makan tauco
      - 2 siung bawang putih, cabai rawit, dan gula merah

      Langkah-langkah:
      1. Haluskan bawang dan cabai, lalu tumis bersama tauco dan gula.
      2. Tambahkan sedikit air, aduk rata.
      3. Siramkan di atas tahu, toge, dan kentang rebus.
      4. Sajikan dengan lontong bila suka.
      '''
    },
    {
      'nama': 'Sambel Hejo Cianjur',
      'gambar': 'https://asset.tribunnews.com/1j_F5s3sei7M2qDC7OXud_Z4gm8=/1200x800/filters:upscale():quality(30):format(webp):focal(0.5x0.5:0.5x0.5)/priangan/foto/bank/originals/Sambel-Hejo-Khas-Cianjur.jpg',
      'resep': '''
      Bahan-bahan:
      - 10 cabai hijau besar
      - 3 siung bawang putih
      - 2 butir tomat hijau
      - Garam, terasi, minyak goreng secukupnya

      Langkah-langkah:
      1. Goreng semua bahan hingga layu.
      2. Ulek kasar bersama garam dan terasi.
      3. Sajikan dengan ikan asin dan lalapan.
      '''
    },
    {
      'nama': 'Nasi Tutug Oncom',
      'gambar': 'https://www.primarasa.co.id/images/images/nasi%20tutug%20oncom.jpg',
      'resep': '''
      Bahan-bahan:
      - 2 piring nasi hangat
      - 100 gram oncom bakar
      - 2 siung bawang putih, 3 bawang merah
      - Cabai rawit, garam, dan kencur

      Langkah-langkah:
      1. Haluskan bumbu, tumis hingga harum.
      2. Masukkan oncom dan aduk rata.
      3. Campur dengan nasi, aduk hingga merata.
      4. Sajikan dengan lalapan dan sambal.
      '''
    },
    {
      'nama': 'Empal Gentong Cianjur',
      'gambar': 'https://assets.promediateknologi.id/crop/0x1341:711x1837/750x500/webp/photo/2023/07/19/Screenshot_2023-07-19-14-09-34-333_cominstagramandroid-2746841691.jpg',
      'resep': '''
      Bahan-bahan:
      - 500 gram daging sapi
      - 1 liter santan
      - Bumbu halus: bawang merah, bawang putih, kunyit, ketumbar, jahe

      Langkah-langkah:
      1. Tumis bumbu hingga harum.
      2. Masukkan daging, aduk rata.
      3. Tambahkan santan, masak hingga daging empuk.
      4. Sajikan dengan taburan bawang goreng.
      '''
    },
    {
      'nama': 'Kue Satu Cianjur',
      'gambar': 'https://assets.kompasiana.com/items/album/2021/04/23/20210418-144407-min-6082cafcd541df7c33188572.jpg?t=o&v=740&x=416',
      'resep': '''
      Bahan-bahan:
      - 250 gram kacang hijau sangrai
      - 150 gram gula halus
      - 1 lembar daun pandan

      Langkah-langkah:
      1. Haluskan kacang hijau hingga lembut.
      2. Campur dengan gula halus dan aduk rata.
      3. Cetak dengan cetakan kecil, diamkan hingga mengeras.
      4. Simpan dalam wadah tertutup.
      '''
    },

  ];

  void showResep(BuildContext context, String nama, String resep, String gambar) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.black.withOpacity(0.85),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      builder: (context) => DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.75,
        maxChildSize: 0.95,
        minChildSize: 0.5,
        builder: (_, controller) => SingleChildScrollView(
          controller: controller,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(gambar, height: 200, fit: BoxFit.cover),
              ),
              const SizedBox(height: 16),
              Text(
                nama,
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                resep,
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  height: 1.6,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close, color: Colors.white),
                label: const Text('Tutup', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF203A43),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: makanan.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 14,
          mainAxisSpacing: 14,
          childAspectRatio: 0.78,
        ),
        itemBuilder: (context, index) {
          final item = makanan[index];
          return GestureDetector(
            onTap: () => showResep(context, item['nama'], item['resep'], item['gambar']),
            child: TweenAnimationBuilder<double>(
              duration: Duration(milliseconds: 500 + (index * 80)),
              tween: Tween(begin: 0, end: 1),
              builder: (context, value, child) => Opacity(
                opacity: value,
                child: Transform.translate(
                  offset: Offset(0, (1 - value) * 20),
                  child: child,
                ),
              ),
              child: Card(
                color: Colors.white.withOpacity(0.12),
                elevation: 8,
                shadowColor: Colors.black87,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Image.network(
                        item['gambar'],
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          color: Colors.black12,
                          child: const Icon(Icons.image_not_supported,
                              color: Colors.white54, size: 40),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            item['nama'],
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 6),
                          ElevatedButton(
                            onPressed: () => showResep(
                                context, item['nama'], item['resep'], item['gambar']),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueAccent.withOpacity(0.8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              minimumSize: const Size(double.infinity, 35),
                            ),
                            child: const Text(
                              'Lihat Resep',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
