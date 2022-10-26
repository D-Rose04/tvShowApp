import 'package:flutter/material.dart';
import 'package:tarea5/menu.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Portada extends StatefulWidget {
  const Portada({Key? key}) : super(key: key);

  @override
  _PortadaState createState() => _PortadaState();
}

class _PortadaState extends State<Portada> {
  late YoutubePlayerController videoController;
  List<String> imagelist = <String>[
    'https://wallpaperforu.com/wp-content/uploads/2021/10/Squid-Game-Wallpapers21350x2400.jpg',
    'https://wallpapers.com/images/thumb/squid-game-player-number-sixty-seven-ouapdlfh8h215uqs.jpg',
    'https://wallpapers.com/images/thumb/squid-game-colourful-entrance-ssddfdzdoeg0qkhg.jpg',
    'https://wallpapers.com/images/thumb/squid-game-ali-abdul-tm8w7fg5q0oiivnr.jpg',
    'https://wallpapers.com/images/thumb/squid-game-master-mind-oh-il-nam-jclxepyqxklpdfi3.jpg',
    'https://wallpapers.com/images/thumb/squid-game-undercover-police-officer-yopps38vbj1wsdr7.jpg'
  ];

  @override
  void initState() {
    const String url = 'https://www.youtube.com/watch?v=LkXmoLsDsbU';
    videoController = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url)!,
        flags: const YoutubePlayerFlags(mute: false, autoPlay: false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: const Menu(),
      appBar: AppBar(
        title: const Text("Portada"),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(193, 54, 223, 220),
              Color.fromARGB(193, 36, 159, 157),
              Color.fromARGB(251, 3, 122, 118),
              Color.fromARGB(220, 219, 37, 116),
              Color.fromARGB(249, 237, 27, 118)
            ])),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: Container(
              margin: const EdgeInsets.only(
                  top: 20, bottom: 10, right: 15, left: 15),
              child: Text(
                "Previews",
                style: Theme.of(context).textTheme.headline1,
              ),
            )),
            SliverToBoxAdapter(
                child: Container(
              margin: const EdgeInsets.only(top: 15, bottom: 15),
              child: CarouselSlider(
                options: CarouselOptions(height: 420.0, autoPlay: true),
                items: imagelist.map((src) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            src,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            )),
            SliverToBoxAdapter(
                child: Container(
              margin: const EdgeInsets.only(
                  top: 10, bottom: 10, right: 15, left: 15),
              child: Text(
                "Trailer",
                style: Theme.of(context).textTheme.headline1,
              ),
            )),
            SliverToBoxAdapter(
                child: Container(
              margin: const EdgeInsets.only(top: 15, bottom: 35),
              child: YoutubePlayerBuilder(
                player: YoutubePlayer(
                    controller: videoController,
                    showVideoProgressIndicator: true),
                builder: (context, player) {
                  return Column(children: [player]);
                },
              ),
            ))
          ],
        ),
  ));
}
