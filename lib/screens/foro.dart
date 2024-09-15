import 'package:flutter/material.dart';

class ForoScreen extends StatelessWidget {
  const ForoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Message Boards"),
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
        padding: const EdgeInsets.all(16.0),
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
                child: const Center(
                  child: Text(
                    "Message Board",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 170, 0, 0), 
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: Column(
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        hintText: "User", filled: true,
                        fillColor: Colors.white,
                      ), ),
                    const SizedBox(height: 10),const TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(height: 10), Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (bool? newValue) {},
                        ),
                        const Text(
                          "Remember me",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                     style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: const Text("Login"),
                    ),
                    const SizedBox(height: 10),
                  const Text(
                      "Register",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
                const SizedBox(height: 20),const Text(
                "Welcoem to the Vimm's Lair message boards!",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              
              
              const SizedBox(height: 20), Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Message Board",
                      style: TextStyle(
                        color: Color.fromARGB(255, 170, 0, 0), 
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
               Text(
                  "The original Vimm's Lair Message Board.",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Request Board",
                      style: TextStyle(
                        color: Color.fromARGB(255, 170, 0, 0), 
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Request a rare game from the Romfinders.",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Misc Board",
                      style: TextStyle(
                        color: Color.fromARGB(255, 170, 0, 0), 
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Post about anything you like, but please keep it clean.",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Manual Project Board",
                      style: TextStyle(
                        color: Color.fromARGB(255, 170, 0, 0), 
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "This board is dedicated to The Manual Project.",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 20),
              

              const Text(
                "Frequently Asked Questions",
                style: TextStyle(color: Color.fromARGB(255, 170, 0, 0), fontSize: 16),
              ),
                const SizedBox(height: 10),


              const Row(
                children: [
                  Icon(Icons.discord, color: Colors.blue, size: 24),
                  SizedBox(width: 10),
                  Text(
                    "Check out the unofficial Vimm's Lair Discord",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
