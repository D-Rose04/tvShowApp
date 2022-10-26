import 'package:flutter/material.dart';
import 'package:tarea5/menu.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Momentos extends StatelessWidget {
  const Momentos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: const Menu(),
      appBar: AppBar(
        title: const Text("Momentos"),
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
        child: ListView(children: [
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: const Text('Momento 1',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => buildSheet(0),
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/images/alisalva456.jpg',
                    height: 240, width: 360, fit: BoxFit.fill),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Momento 2',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => buildSheet(1),
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/240pierde.jpg',
                  height: 240,
                  width: 369,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Momento 3',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )),
          Container(
            margin: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => buildSheet(2),
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/images/estrategia.jpg',
                    height: 240, width: 360, fit: BoxFit.fill),
              ),
            ),
          )
        ]),
      ));

  Widget buildSheet(int pos) {
    List<String> url = [
      'https://youtu.be/9c-yIo1131E',
      'https://youtu.be/CZu4hdTQ2Rw',
      'https://youtu.be/byvUzITSAxs'
    ];

    return ListView(
      children: [
        Container(
            padding: const EdgeInsets.all(0.1),
            child: YoutubePlayer(
                controller: YoutubePlayerController(
                    initialVideoId: YoutubePlayer.convertUrlToId(url[pos])!,
                    flags: const YoutubePlayerFlags(
                        autoPlay: false, mute: false)))),
        Container(
          padding:
              const EdgeInsets.only(top: 5, bottom: 5, right: 20, left: 20),
          child: const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            textAlign: TextAlign.justify,
          ),
        )
      ],
    );
  }
}
