import 'package:flutter/material.dart';
import 'package:tarea5/menu.dart';

class Personajes extends StatelessWidget {
  Personajes({Key? key}) : super(key: key);
  List<String> imagesList = [
    'https://i.pinimg.com/236x/04/ac/a5/04aca5fc8e3a0a3d7c3b638f953b199a.jpg',
    'https://i.pinimg.com/236x/7c/e8/af/7ce8af5e685ef4ffbef60f8ef9d76f22.jpg',
    'https://i.pinimg.com/236x/3f/a3/ff/3fa3ffd9087c33ed823daac2a4b49b7f.jpg'
  ];

  List<String> description = [
    'Lee Jung-jae como Seong Gi-hun, un chofer divorciado y adicto al juego. Vive con su madre y lucha por mantener económicamente a su hija. Participa en el juego para saldar sus muchas deudas y demostrar que es lo suficientemente estable financieramente para tener la custodia de su hija, que se irá a los Estados Unidos con su madre y su padrastro.',
    'HoYeon Jung como Kang Sae-byeok desertora y carterista de Corea del Norte. Ella ingresa al juego para pagar a un corredor que pueda rescatar a sus padres al otro lado de la frontera y comprar una casa para que viva su familia reunida.',
    'O Yeong-su como Oh Il-nam un anciano con un tumor cerebral que prefiere jugar en lugar de esperar a morir en el mundo exterior.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Menu(),
      appBar: AppBar(
          title: const Text("Personajes"),
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor),
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
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 15),
              padding: const EdgeInsets.all(10),
              child: Stack(alignment: Alignment.center, children: [
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    GestureDetector(
                      child: const CircleAvatar(
                          radius: 90,
                          backgroundImage: NetworkImage(
                              'https://i.pinimg.com/236x/04/ac/a5/04aca5fc8e3a0a3d7c3b638f953b199a.jpg')),
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            builder: (context) => buildSheet(0),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20))));
                      },
                    ),
                    Text(
                      'Lee Jung-jae',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      'Seong Gi-hun',
                      style: Theme.of(context).textTheme.headline2,
                    )
                  ],
                ),
              ]),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 15),
              padding: const EdgeInsets.all(10),
              child: Stack(alignment: Alignment.center, children: [
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    GestureDetector(
                      child: const CircleAvatar(
                          radius: 90,
                          backgroundImage: NetworkImage(
                              'https://i.pinimg.com/236x/7c/e8/af/7ce8af5e685ef4ffbef60f8ef9d76f22.jpg')),
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            builder: (context) => buildSheet(1),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20))));
                      },
                    ),
                    Text(
                      'Hoyeon Jung',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      'Kang Sae-byeok',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ],
                ),
              ]),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 15),
              padding: const EdgeInsets.all(10),
              child: Stack(alignment: Alignment.center, children: [
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    GestureDetector(
                        child: const CircleAvatar(
                            radius: 90,
                            backgroundImage: NetworkImage(
                                'https://i.pinimg.com/236x/3f/a3/ff/3fa3ffd9087c33ed823daac2a4b49b7f.jpg')),
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder: (context) => buildSheet(2),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(20))));
                        }),
                    Text(
                      'O Yeong-su',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      'O II-nam',
                      style: Theme.of(context).textTheme.headline2,
                    )
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }

  Widget buildSheet(int pos) => ListView(
        children: [
          Container(
              padding: const EdgeInsets.all(0.1),
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(20)),
                child: Image.network(imagesList[pos], fit: BoxFit.fill),
              )),
          Container(
            padding:
                const EdgeInsets.only(top: 5, bottom: 5, right: 20, left: 20),
            child: Text(
              description[pos],
              textAlign: TextAlign.justify,
            ),
          )
        ],
      );
}
