import 'package:flutter/material.dart';


class InicioScreen extends StatelessWidget {
  const InicioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vimm's Lair"),
        backgroundColor: const Color.fromARGB(255, 170, 0, 0), 
        leading: PopupMenuButton<String>(
          onSelected: (value) {
            switch (value) {
              case 'Main Menu':
                Navigator.pushNamed(context, '/inicio');
                break;
              case 'The Vault':
                Navigator.pushNamed(context, '/boveda');
                break;
              case 'Manual Project':
                Navigator.pushNamed(context, '/manuales');
                break;
              case 'Message Boards':
                Navigator.pushNamed(context, '/foro');
                break;
            }
          },
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
                Color.fromARGB(255, 170, 0, 0), 
                Color.fromARGB(255, 0, 0, 0),   
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.0, 0.3], 
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                             Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Vimm's Lair",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 170, 0, 0),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Preserving the classics since 1997",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Welcome to Vimm's Lair! This site is dedicated to console videogame nostalgia. "
                        "Inside you'll find thousands of games, full-color manual scans, user ratings and reviews, and much more!",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Emulation Lair",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 170, 0, 0), 
                              ),
                            ),
                            Text(
                              "The newest and greatest console emulators.",
                              style: TextStyle(fontSize: 14, color: Colors.white),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "The Vault",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 170, 0, 0),
                              ),
                            ),
                            Text(
                              "Every game in the world for twenty-nine classic systems.",
                              style: TextStyle(fontSize: 14, color: Colors.white),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "The Manual Project",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 170, 0, 0), 
                              ),
                            ),
                            Text(
                              "Thousands of full-color manuals. Add your own instantly!",
                              style: TextStyle(fontSize: 14, color: Colors.white),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Message Boards",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 170, 0, 0), 
                              ),
                            ),
                            Text(
                              "Got a question or comment? Come on in.",
                              style: TextStyle(fontSize: 14, color: Colors.white),
                            ),
                            SizedBox(height: 10),
                          
                            Text(
                              "FFA Links",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 170, 0, 0), 
                              ),
                            ),
                            Text(
                              "Browse the free for all links or add your own.",
                              style: TextStyle(fontSize: 14, color: Colors.white),
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
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "June 6, 2024",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.yellow, 
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Vimm's Lair has been asked to remove many games from The Vault on behalf of Nintendo, Sega, Lego...",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white, 
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "April 19, 2024",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.yellow, 
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "For the first time ever Apple is allowing emulators in the official App Store...",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white, 
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),const Center(
                        child: Column(
                          children: [
                            Text(
                              "Previous news",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 170, 0, 0), 
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Contact info",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 170, 0, 0), 
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Privacy Policy",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 170, 0, 0), 
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
     
    );
  }
}