import 'package:flutter/material.dart';
import 'package:tarea5/menu.dart';

class Enmivida extends StatelessWidget {
  const Enmivida({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const Menu(),
        appBar: AppBar(
          title: const Text("En mi vida"),
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
              child: const Text('Influencia',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(10),
              child: const Text(
                'Esta serie de supervivencia, envuelta en mucha sangre y violencia, hace una crìtica directa a la sociedad actual en forma de hipérbole, haciendo partìcipes a sus personajes de un juego de niños que puede acabar con sus vidas de manera dramática si no superan cada nivel. \n\nSquid Game critica el capitalismo, el materialismo, la falta de principios y valores, la ausencia de humanidad y la lealtad ante el difícil dilema de salvar tu vida sacrificando a otros, pero por dinero. Es decir, es un juego en el que nadie te obliga a jugar y en el que participan finalmente diversos perfiles de personas que provienen de distintos estratos de la sociedad, con diferentes problemas (todos económico/financieros de alguna manera) que les han llevado al lìmite y de los cuales no encuentran una salida clara para poder solucionarlos.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            )
          ]),
        ),
      );
}
