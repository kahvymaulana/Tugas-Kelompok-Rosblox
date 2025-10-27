import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  final List<String> videoUrls = const [
    // 🎥 Video YouTube bertema kemanusiaan
    'https://www.youtube.com/watch?v=vfLQ_KzHdlk', // Humanity documentary
    'https://www.youtube.com/watch?v=2PFKUoNyYx8', // UNICEF - helping children
    'https://www.youtube.com/watch?v=qg6wXb0W3S0', // Acts of kindness
    'https://www.youtube.com/watch?v=tgGxPwK5e6o', // Peace & humanity
    'https://www.youtube.com/watch?v=2vKz7WnU83E', // Volunteering story
    'https://www.youtube.com/watch?v=KzZ0xWm2Tgc', // Helping the poor
    'https://www.youtube.com/watch?v=RsfEgzJZ2OQ', // Humanity in crisis
    'https://www.youtube.com/watch?v=dXrVqUeYFqM', // Compassion short film
    'https://www.youtube.com/watch?v=UIp6_0kct_U', // Hope and peace
    'https://www.youtube.com/watch?v=6U2ZVJrA_n4', // Kindness compilation
  ];

  String? _selectedVideoId;

  @override
  Widget build(BuildContext context) {
    return _selectedVideoId == null
        ? GridView.builder(
            padding: const EdgeInsets.all(16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemCount: videoUrls.length,
            itemBuilder: (context, index) {
              final url = videoUrls[index];
              final videoId = YoutubePlayer.convertUrlToId(url)!;
              final thumbnail = 'https://img.youtube.com/vi/$videoId/0.jpg';

              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedVideoId = videoId;
                  });
                },
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.network(
                        thumbnail,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                      Container(
                        color: Colors.black38,
                        child: const Icon(Icons.play_circle_fill,
                            color: Colors.white, size: 60),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        : Scaffold(
            appBar: AppBar(
              title: const Text("Tonton Video"),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => setState(() => _selectedVideoId = null),
              ),
            ),
            body: YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId: _selectedVideoId!,
                flags: const YoutubePlayerFlags(
                  autoPlay: true,
                  mute: false,
                ),
              ),
              showVideoProgressIndicator: true,
            ),
          );
  }
}
