import 'package:flutter/material.dart';
import 'package:tarea5/menu.dart';

class Acerca extends StatelessWidget {
  const Acerca({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: const Menu(),
      appBar: AppBar(
        title: const Text("Acerca de"),
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
            padding: const EdgeInsets.all(5),
            child: const Text('Descripción',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/creator.jpg',
                  fit: BoxFit.cover,
                )),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            child: const Text(
              'La serie narra la historia de 456 personas que deciden convertirse en jugadores de una serie de misteriosos y enfermizos juegos infantiles de supervivencia mortal para tener la oportunidad de ganar la cantidad máxima de 45 600 millones de wones. Por cada persona que muere se añade 100 millones de wones al bote, incitando el conflicto entre los jugadores.\n\nEl juego final, también el que da título a la serie, es el juego del calamar, muy físico y en el que solo puede haber un único ganador. El juego se llama así ya que el área en que se juega tiene diferentes formas geométricas (círculo, cuadrado o triángulo) dibujadas en el suelo que, en su conjunto, parecen formar un calamar. Si un atacante logra atravesar al defensor y entrar en la cabeza del calamar, se proclama como ganador del juego.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
          )
        ]),
      ));
}
