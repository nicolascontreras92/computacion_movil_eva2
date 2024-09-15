import 'package:flutter/material.dart';

class ManualesScreen extends StatelessWidget {
  const ManualesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manual Project"),
        backgroundColor: const Color.fromARGB(255, 170, 0, 0), 
        leading: PopupMenuButton<String>(
          onSelected: (value) {
            if (value == 'Main Menu') {
              Navigator.pushNamed(context, '/inicio');
            } else if (value == 'The Vault') {
              Navigator.pushNamed(context, '/boveda');
            } else if (value == 'Manual Project') {
              Navigator.pushNamed(context, '/manuales');
            } else if (value == 'Message Boards') {
              Navigator.pushNamed(context, '/foro');
            }          },
          itemBuilder: (BuildContext context) {
            return const [
              PopupMenuItem<String>(
                value: 'Main Menu',
                child: Text('Main Menu'),
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
              Color.fromARGB(255, 170, 0, 0), Color.fromARGB(255, 0, 0, 0),       ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "The Manual Project",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold, color: Color.fromARGB(255, 170, 0, 0), 
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Started in 1999, the goal of The Manual Project is to scan as many video game manuals as possible. Once scanned they are posted here so that everyone may read them. All manuals can be viewed online in your browser or downloaded as a pdf.",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: const Column(
                    children: [
                      Text(
                        "Manuals",
                        style: TextStyle(
                          color: Color.fromARGB(255, 170, 0, 0),fontSize: 18,fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Atari 2600", style: TextStyle(color: Colors.white)),
                          Text("208", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Atari 5200", style: TextStyle(color: Colors.white)),
                          Text("67", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Atari 7800", style: TextStyle(color: Colors.white)),
                          Text("60", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Dreamcast", style: TextStyle(color: Colors.white)),
                          Text("84", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Game Boy", style: TextStyle(color: Colors.white)),
                          Text("59", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Game Boy Advance", style: TextStyle(color: Colors.white)),
                          Text("87", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("GameCube", style: TextStyle(color: Colors.white)),
                          Text("166", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Genesis", style: TextStyle(color: Colors.white)),
                          Text("80", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Jaguar", style: TextStyle(color: Colors.white)),
                          Text("24", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Lynx", style: TextStyle(color: Colors.white)),
                          Text("41", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Nintendo", style: TextStyle(color: Colors.white)),
                          Text("379", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Nintendo 64", style: TextStyle(color: Colors.white)),
                          Text("67", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("PlayStation", style: TextStyle(color: Colors.white)),
                          Text("422", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("PlayStation 2", style: TextStyle(color: Colors.white)),
                          Text("2032", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("PlayStation 3", style: TextStyle(color: Colors.white)),
                          Text("85", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Wii", style: TextStyle(color: Colors.white)),
                          Text("126", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("WiiWare", style: TextStyle(color: Colors.white)),
                          Text("18", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ),              
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: const Column(
                    children: [
                      Text(
                        "Latest Additions",
                        style: TextStyle(
                          color: Color.fromARGB(255, 170, 0, 0), 
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("GBA", style: TextStyle(color: Colors.white)),
                          Text("Classic NES Series: Zelda II", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                          Text("GameCube", style: TextStyle(color: Colors.white)),
                          Text("ZooCube", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("PS2", style: TextStyle(color: Colors.white)),
                          Text("SuperLite 2000 Vol. 23", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("DS", style: TextStyle(color: Colors.white)),
                          Text("Tetris Party Deluxe", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("PS1", style: TextStyle(color: Colors.white)),
                          Text("SpongeBob: SuperSponge", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ),              
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Advanced Search",
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Find a manual...",
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.search, color: Colors.blue),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Center(
                  child: Column(
                    children: [
                      Text(
                        "Want to contribute to The Manual Project? Contribute a manual",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                        ),
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
