import 'package:flutter/material.dart';

void main() {
  runApp(const MyProfile());
}

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: const Color(0xFFF4F6F8),
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF00B4DB), Color(0xFF0083B0)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          
          Positioned(
            top: 40,
            left: 10,
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),

          
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 40),

                
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/image/profile.png'),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Prince Dan Dominic V. Cabiguing',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Flutter App Developer',
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
                const SizedBox(height: 25),

                Expanded(
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.85),
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Center(
                            child: Text(
                              'Profile Information',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal,
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          _infoTile(Icons.phone, '+63 923 423 234'),
                          const SizedBox(height: 10),
                          _infoTile(Icons.email,
                              'prince.dan@normi.edu.pageBuilder'),
                          const SizedBox(height: 10),
                          _infoTile(Icons.location_on,
                              'Butuan City, Agusan del Norte, Philippines'),
                          const SizedBox(height: 25),
                          const Divider(thickness: 1),
                          const SizedBox(height: 15),

                    
                          const Text(
                            'About Me',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'As a passionate Flutter developer, I build responsive, creative, and efficient mobile apps. I enjoy turning complex problems into simple and elegant solutions while continuously learning new technologies.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                              height: 1.6,
                            ),
                          ),
                          const SizedBox(height: 25),

                        
                          const Text(
                            'Skills',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Wrap(
                            spacing: 10,
                            runSpacing: 10,
                            children: [
                              _skillChip('Flutter'),
                              _skillChip('Firebase'),
                              _skillChip('UI/UX Design'),
                              _skillChip('REST APIs'),
                              _skillChip('Dart'),
                            ],
                          ),
                          const SizedBox(height: 25),

                          
                          const Center(
                            child: Text(
                              'Connect with Me',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal,
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _socialButton(Icons.facebook, Colors.blue),
                              const SizedBox(width: 20),
                              _socialButton(Icons.camera_alt, Colors.purple),
                              const SizedBox(width: 20),
                              _socialButton(Icons.language, Colors.teal),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

 
  static Widget _infoTile(IconData icon, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.teal),
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  
  static Widget _skillChip(String skill) {
    return Chip(
      label: Text(skill),
      backgroundColor: Colors.teal.withOpacity(0.1),
      labelStyle: const TextStyle(color: Colors.teal),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    );
  }


  static Widget _socialButton(IconData icon, Color color) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: color.withOpacity(0.1),
      child: Icon(icon, color: color, size: 26),
    );
  }
}
