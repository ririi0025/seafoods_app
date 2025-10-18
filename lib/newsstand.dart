import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_drawer.dart';

class Newsstand extends StatefulWidget {
  const Newsstand({super.key});

  @override
  State<Newsstand> createState() => _NewsstandState();
}

class _NewsstandState extends State<Newsstand> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    final List<String> news = args?['news'] ??
        [
          'Local fishermen celebrate abundant tuna harvest this season.',
          'Seafood exports from the Philippines hit record highs in 2025.',
          'Marine conservation groups launch campaign for sustainable fishing.',
          'New cold storage tech helps preserve fish freshness longer.',
          'Crab and shrimp prices drop amid oversupply in Mindanao region.',
          'Butuan’s seafood festival draws thousands of visitors.',
          'Ocean cleanup efforts boost coral reef recovery.',
          'Top chefs reveal best seafood recipes for summer.',
        ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Seafood Newsstand',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF0077B6), // Deep ocean blue
        elevation: 3,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh, color: Colors.white),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Refreshing latest seafood news...'),
                  duration: Duration(seconds: 1),
                ),
              );
            },
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFCAF0F8), Color(0xFFADE8F4)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Latest Seafood Industry Updates',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF023E8A),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: news.isEmpty
                    ? const Center(
                        child: Text(
                          'No seafood news available at the moment.',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      )
                    : ListView.builder(
                        itemCount: news.length,
                        itemBuilder: (context, index) {
                          return Card(
                            margin: const EdgeInsets.symmetric(vertical: 8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            color: Colors.white.withOpacity(0.9),
                            elevation: 4,
                            child: ListTile(
                              leading: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF90E0EF),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Icon(
                                  Icons.anchor,
                                  color: Color(0xFF023E8A),
                                  size: 28,
                                ),
                              ),
                              title: Text(
                                news[index],
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87,
                                ),
                              ),
                              trailing: const Icon(Icons.chevron_right,
                                  size: 22, color: Colors.teal),
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Opening: ${news[index]}'),
                                    duration: const Duration(seconds: 1),
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color(0xFF00B4D8),
        icon: const Icon(Icons.add),
        label: const Text('Add News'),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Feature coming soon: Add your own seafood news!'),
              duration: Duration(seconds: 2),
            ),
          );
        },
      ),
    );
  }
}
