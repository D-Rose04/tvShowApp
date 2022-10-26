import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => MenuState();
}

class MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) => Drawer(
          child: ListView(
        children: [
          Container(
            height: 210,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(10)),
                  color: Color.fromARGB(193, 36, 159, 157)),
              child: DrawerHeader(
                  child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile.jpeg'),
                      radius: 35,
                    ),
                  ),
                  Text(
                    "David Hernández",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("davidbhr04@gmail.com",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold))
                ],
              ))),
          ListTile(
              title: const Text("Portada"),
              leading: const Icon(
                Icons.home,
                color: Color.fromARGB(249, 237, 27, 118),
              ),
              onTap: () {
                GoRouter.of(context).go('/');
                Navigator.pop(context);
              }),
          ListTile(
              title: const Text("Personajes"),
              leading: const Icon(
                Icons.people_alt,
                color: Color.fromARGB(249, 237, 27, 118),
              ),
              onTap: () {
                GoRouter.of(context).go('/personajes');
                Navigator.pop(context);
              }),
          ListTile(
              title: const Text("Momentos"),
              leading: const Icon(
                Icons.switch_access_shortcut,
                color: Color.fromARGB(249, 237, 27, 118),
              ),
              onTap: () {
                GoRouter.of(context).go('/momentos');
                Navigator.pop(context);
              }),
          ListTile(
              title: const Text("Acerca de"),
              leading: const Icon(
                Icons.info,
                color: Color.fromARGB(249, 237, 27, 118),
              ),
              onTap: () {
                GoRouter.of(context).go('/acercade');
                Navigator.pop(context);
              }),
          ListTile(
              title: const Text("En mi vida"),
              leading: const Icon(
                Icons.auto_awesome,
                color: Color.fromARGB(249, 237, 27, 118),
              ),
              onTap: () {
                GoRouter.of(context).go('/enmivida');
                Navigator.pop(context);
              }),
          ListTile(
              title: const Text("Contratame"),
              leading: const Icon(
                Icons.business_center,
                color: Color.fromARGB(249, 237, 27, 118),
              ),
              onTap: () {
                GoRouter.of(context).go('/contratame');
                Navigator.pop(context);
              })
        ],
      ));
}
