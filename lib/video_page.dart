import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  final List<Map<String, String>> videos = const [
    {
      'judul': 'Kemanusiaan di Gaza',
      'url': 'https://youtu.be/wccPO8GxWR0?si=Wz9ewftdC7bBsNjK',
      'thumbnail': 'https://img.youtube.com/vi/wccPO8GxWR0/0.jpg'
    },
    {
      'judul': 'Kemanusiaan Dunia',
      'url': 'https://youtu.be/PsJtuDrHDp8?si=gHnbZvlkht98hLwt',
      'thumbnail': 'https://img.youtube.com/vi/PsJtuDrHDp8/0.jpg'
    },
    {
      'judul': 'Aksi Relawan di Konflik Dunia',
      'url': 'https://youtu.be/9jI0_InROwY?si=Kcej3JZ3Z117a8I_',
      'thumbnail': 'https://img.youtube.com/vi/9jI0_InROwY/0.jpg'
    },
    {
      'judul': 'Solidaritas untuk Dunia',
      'url': 'https://youtu.be/2Bi9gUWiE4A?si=znsJt4EXaLoaQxJI',
      'thumbnail': 'https://img.youtube.com/vi/2Bi9gUWiE4A/0.jpg'
    },
    {
      'judul': 'Aksi Peduli Sesama',
      'url': 'https://youtu.be/y5aYT90RiGE?si=gvGewtrTViiOXKmx',
      'thumbnail': 'https://img.youtube.com/vi/y5aYT90RiGE/0.jpg'
    },
    {
      'judul': 'Dunia Tanpa Perang',
      'url': 'https://youtu.be/As67nnwVnIU?si=chKLZ-rIv-baZR1-',
      'thumbnail': 'https://img.youtube.com/vi/As67nnwVnIU/0.jpg'
    },
    {
      'judul': 'Semangat Kemanusiaan',
      'url': 'https://youtu.be/rGTbJssfVoI?si=CXp_xdj9t0kW-OGX',
      'thumbnail': 'https://img.youtube.com/vi/rGTbJssfVoI/0.jpg'
    },
    {
      'judul': 'Berbagi untuk Dunia',
      'url': 'https://youtu.be/8NOGkJWm9Dk?si=93VeGdkgq1_5oR8s',
      'thumbnail': 'https://img.youtube.com/vi/8NOGkJWm9Dk/0.jpg'
    },
    {
      'judul': 'Donasi Kemanusiaan',
      'url': 'https://youtu.be/WhjtnNaDn08?si=lwoNrlvbqsvqn8-H',
      'thumbnail': 'https://img.youtube.com/vi/WhjtnNaDn08/0.jpg'
    },
    {
      'judul': 'Bersatu dalam Kebaikan',
      'url': 'https://youtu.be/0Nh61ktP90c?si=4bBhsdv62KOZ55o8',
      'thumbnail': 'https://img.youtube.com/vi/0Nh61ktP90c/0.jpg'
    },
  ];

  // Fungsi buka link di YouTube / browser
  Future<void> _launchVideo(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Tidak bisa membuka URL: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Video Kemanusiaan',
          style: GoogleFonts.poppins(
            fontSize: 24,
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
        child: GridView.builder(
          padding: const EdgeInsets.fromLTRB(16, 100, 16, 20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 14,
            mainAxisSpacing: 14,
            childAspectRatio: 16 / 10,
          ),
          itemCount: videos.length,
          itemBuilder: (context, index) {
            final video = videos[index];
            return InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () => _launchVideo(video['url']!),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      video['thumbnail']!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                      loadingBuilder: (context, child, progress) {
                        if (progress == null) return child;
                        return Container(
                          color: Colors.black26,
                          child: const Center(
                            child:
                                CircularProgressIndicator(color: Colors.white),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.black38,
                    ),
                  ),
                  const Center(
                    child: Icon(Icons.play_circle_fill,
                        color: Colors.white, size: 60),
                  ),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Video ${index + 1}',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
