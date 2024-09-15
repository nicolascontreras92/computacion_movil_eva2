import 'package:flutter/material.dart';

class BovedaScreen extends StatelessWidget {
  const BovedaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("The Vault"),
        backgroundColor: const Color.fromARGB(255, 170, 0, 0), leading: PopupMenuButton<String>(
          onSelected: (value) {
            if (value == 'Main Menu') {
              Navigator.pushNamed(context, '/inicio');
            } else if (value == 'The Vault') {
              Navigator.pushNamed(context, '/boveda');
            } else if (value == 'Manual Project') {
              Navigator.pushNamed(context, '/manuales');
            } else if (value == 'Message Boards') {
              Navigator.pushNamed(context, '/foro');
            }
          },
          itemBuilder: (BuildContext context) {
            return const [
              PopupMenuItem<String>(
                value: 'Main Menú',
                child: Text('Main Menú'),
              ),
              PopupMenuItem<String>(
                value: 'The Vault',
                child: Text('The Vault'),
              ),
              PopupMenuItem<String>(
                value: 'Manual Project',
                child: Text('Manual Project'),
              ),
              PopupMenuItem<String>(
                value: 'Message Boards',
                child: Text('Message Boards'),
              ),
            ];
          },
          child: const Icon(Icons.menu),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 170, 0, 0), 
              Color.fromARGB(255, 0, 0, 0),   
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.3],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity, padding: const EdgeInsets.all(16.0), decoration: BoxDecoration(
                    color: Colors.black, 
                    border: Border.all(color: Colors.white, width: 2), 
                  ),
                  child: const Center(
                    child: Text(
                      "The Vault",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 170, 0, 0), 
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Every game in the world for twenty-nine classic systems.",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Consoles",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 170, 0, 0), 
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Atari 2600 - 1977", style: TextStyle(color: Colors.white)),
                     Text("Atari 5200 - 1982", style: TextStyle(color: Colors.white)),
                     Text("Nintendo - 1983", style: TextStyle(color: Colors.white)),
                      Text("Master System - 1985", style: TextStyle(color: Colors.white)),
                      Text("Atari 7800 - 1986", style: TextStyle(color: Colors.white)),
                       Text("TurboGrafx-16 - 1987", style: TextStyle(color: Colors.white)),
                       Text("Genesis - 1988", style: TextStyle(color: Colors.white)),
                      Text("TurboGrafx-CD - 1988", style: TextStyle(color: Colors.white)),
                      Text("Super Nintendo - 1990", style: TextStyle(color: Colors.white)),
                      Text("Sega CD - 1991", style: TextStyle(color: Colors.white)),
                      Text("Sega 32X - 1994", style: TextStyle(color: Colors.white)),
                   Text("Saturn - 1994", style: TextStyle(color: Colors.white)),
                     Text("PlayStation - 1994", style: TextStyle(color: Colors.white)),
                     Text("Nintendo 64 - 1996", style: TextStyle(color: Colors.white)),
                      Text("Dreamcast - 1998", style: TextStyle(color: Colors.white)),
                      Text("PlayStation 2 - 2000", style: TextStyle(color: Colors.white)),
                      Text("GameCube - 2001", style: TextStyle(color: Colors.white)),
                      Text("Xbox - 2001", style: TextStyle(color: Colors.white)),
                  Text("Xbox 360 - 2005", style: TextStyle(color: Colors.white)),
                      Text("PlayStation 3 - 2006", style: TextStyle(color: Colors.white)),
                     Text("Wii - 2006", style: TextStyle(color: Colors.white)),
                      Text("WiiWare - 2008", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                const SizedBox(height: 20), const Text(
                  "Handhelds",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 170, 0, 0), 
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Game Boy - 1989", style: TextStyle(color: Colors.white)),
                     Text("Lynx - 1989", style: TextStyle(color: Colors.white)),
                      Text("Game Gear - 1990", style: TextStyle(color: Colors.white)),
                     Text("Virtual Boy - 1995", style: TextStyle(color: Colors.white)),
                      Text("Game Boy Color - 1998", style: TextStyle(color: Colors.white)),
                      Text("Game Boy Advance - 2001", style: TextStyle(color: Colors.white)),
                       Text("Nintendo DS - 2004", style: TextStyle(color: Colors.white)),
                       Text("PlayStation Portable - 2004", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Center(
                  child: Column(
                    children: [
                      Text(
                        "Advanced Search",
                        style: TextStyle(color: Color.fromARGB(255, 170, 0, 0), fontSize: 18),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Find a game...",
                          filled: true,
                          fillColor: Colors.white,
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Want to contribute to The Vault?",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Contribute a game",
                        style: TextStyle(color: Color.fromARGB(255, 170, 0, 0)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
