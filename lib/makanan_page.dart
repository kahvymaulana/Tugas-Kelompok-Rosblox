import 'package:flutter/material.dart';

class MakananPage extends StatelessWidget {
  const MakananPage({super.key});

  final List<Map<String, dynamic>> makanan = const [
    {
      'nama': 'Sate Maranggi Cianjur',
      'resep': '''
**Bahan-bahan:**
- 500 gram daging sapi (potong dadu)
- 3 sdm kecap manis
- 2 sdm minyak goreng
- 3 siung bawang putih, haluskan
- 1 sdm ketumbar bubuk
- ½ sdt garam
- ½ sdt merica bubuk

**Langkah-langkah:**
1. Campur semua bumbu jadi satu, masukkan daging sapi.
2. Diamkan minimal 30 menit agar bumbu meresap.
3. Tusukkan daging ke tusuk sate, lalu bakar di atas bara hingga matang sambil dioles sisa bumbu.
4. Sajikan dengan sambal oncom khas Cianjur.
'''
    },
    {
      'nama': 'Nasi Pepes Ikan Mas',
      'resep': '''
**Bahan-bahan:**
- 2 ekor ikan mas ukuran sedang
- 4 lembar daun pisang
- 5 siung bawang merah
- 3 siung bawang putih
- 2 cm jahe, lengkuas, dan kunyit
- 3 buah cabai merah
- 1 sdt garam
- 1 batang serai, geprek
- 2 sdm minyak goreng

**Langkah-langkah:**
1. Haluskan bumbu, tumis hingga harum.
2. Lumuri ikan mas dengan bumbu, tambahkan serai.
3. Bungkus dengan daun pisang dan kukus selama 30–40 menit.
4. Sajikan hangat dengan nasi putih.
'''
    },
    {
      'nama': 'Laksa Cianjur',
      'resep': '''
**Bahan-bahan:**
- 100 gram bihun, seduh air panas
- 1 liter santan
- 100 gram ayam suwir
- 2 lembar daun salam
- 2 cm lengkuas, memarkan
- 3 sdm bumbu halus (bawang putih, kunyit, kemiri, ketumbar)
- Garam dan gula secukupnya

**Langkah-langkah:**
1. Tumis bumbu halus, masukkan daun salam dan lengkuas.
2. Tuang santan, aduk perlahan hingga mendidih.
3. Masukkan ayam suwir dan bihun.
4. Sajikan dengan taburan bawang goreng dan daun seledri.
'''
    },
    {
      'nama': 'Empal Gentong Cianjur',
      'resep': '''
**Bahan-bahan:**
- 500 gram daging sapi
- 1 liter santan
- 5 siung bawang merah
- 3 siung bawang putih
- 2 cm kunyit dan jahe
- 1 batang serai, memarkan
- Garam dan gula secukupnya

**Langkah-langkah:**
1. Haluskan bumbu lalu tumis hingga wangi.
2. Masukkan daging, aduk hingga berubah warna.
3. Tambahkan santan, aduk perlahan hingga daging empuk.
4. Sajikan dengan bawang goreng dan sambal.
'''
    },
    {
      'nama': 'Manisan Cianjur',
      'resep': '''
**Bahan-bahan:**
- 500 gram buah pala muda (atau pepaya muda)
- 300 gram gula pasir
- 1 liter air
- 1 sdt garam
- Pewarna makanan (opsional)

**Langkah-langkah:**
1. Kupas dan iris buah, rendam dalam air garam 1 jam.
2. Rebus air dan gula hingga mendidih.
3. Masukkan buah, masak sampai agak kental.
4. Angkat dan tiriskan, biarkan dingin sebelum disimpan.
'''
    },
    {
      'nama': 'Asinan Cianjur',
      'resep': '''
**Bahan-bahan:**
- 1 buah mentimun, potong
- 1 buah nanas, potong
- 100 gram kol iris
- 1 liter air
- 5 sdm gula
- 2 sdm cuka
- 5 cabai merah keriting
- 2 siung bawang putih
- 1 sdt garam

**Langkah-langkah:**
1. Haluskan cabai dan bawang putih.
2. Rebus dengan air, gula, cuka, dan garam.
3. Biarkan dingin, lalu siram ke potongan buah.
4. Sajikan segar.
'''
    },
    {
      'nama': 'Tauge Goreng Cianjur',
      'resep': '''
**Bahan-bahan:**
- 200 gram tauge
- 100 gram mie kuning
- 2 sdm oncom halus
- 2 siung bawang putih
- 1 sdm kecap manis
- Garam dan minyak secukupnya

**Langkah-langkah:**
1. Tumis bawang putih dan oncom hingga wangi.
2. Masukkan tauge dan mie kuning, aduk rata.
3. Tambahkan kecap dan garam, masak sebentar.
4. Sajikan hangat dengan kerupuk.
'''
    },
    {
      'nama': 'Keripik Tempe Cianjur',
      'resep': '''
**Bahan-bahan:**
- 10 lembar tempe tipis
- 5 sdm tepung beras
- 2 sdm tepung tapioka
- ½ sdt ketumbar bubuk
- 1 siung bawang putih halus
- Air dan garam secukupnya

**Langkah-langkah:**
1. Campur semua bahan jadi adonan.
2. Celupkan tempe ke adonan.
3. Goreng dalam minyak panas hingga kering dan renyah.
'''
    },
    {
      'nama': 'Dodol Cianjur',
      'resep': '''
**Bahan-bahan:**
- 500 gram beras ketan, sangrai dan haluskan
- 500 ml santan
- 250 gram gula merah
- 100 gram gula pasir
- ½ sdt garam

**Langkah-langkah:**
1. Campur semua bahan dalam wajan.
2. Masak sambil terus diaduk hingga kental dan tidak lengket.
3. Angkat, dinginkan, dan potong-potong.
'''
    },
    {
      'nama': 'Sambal Hejo Cianjur',
      'resep': '''
**Bahan-bahan:**
- 10 cabai hijau besar
- 5 cabai rawit hijau
- 2 siung bawang putih
- 3 butir bawang merah
- ½ sdt garam
- 1 buah tomat hijau
- 1 sdm minyak panas

**Langkah-langkah:**
1. Ulek semua bahan hingga halus kasar.
2. Siram dengan minyak panas.
3. Sajikan bersama nasi hangat dan lalapan.
'''
    },
  ];

  void showResep(BuildContext context, String nama, String resep) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: Text(nama, style: const TextStyle(fontWeight: FontWeight.bold)),
        content: SingleChildScrollView(
          child: Text(resep, style: const TextStyle(fontSize: 16)),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Tutup'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: makanan.length,
      itemBuilder: (context, index) {
        final item = makanan[index];
        return Card(
          elevation: 3,
          margin: const EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: ListTile(
            leading: const Icon(Icons.restaurant_menu, color: Colors.orangeAccent),
            title: Text(item['nama']!, style: const TextStyle(fontWeight: FontWeight.bold)),
            onTap: () => showResep(context, item['nama']!, item['resep']!),
          ),
        );
      },
    );
  }
}
