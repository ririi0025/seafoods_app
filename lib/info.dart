import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About OceanCatch Seafoods'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Icon(
                Icons.set_meal,
                size: 100,
                color: Colors.lightBlueAccent,
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'OceanCatch Seafoods',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'Fresh from the sea, delivered to your table!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Who We Are',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'At OceanCatch Seafoods, we’re passionate about providing the freshest and finest '
              'seafood straight from the ocean. From tuna and salmon to crabs, shrimp, and squid, '
              'we work directly with trusted fishermen to bring you premium seafood every day. '
              'Our goal is to make seafood dining easy, sustainable, and delicious for everyone.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 25),
            const Text(
              'Our Mission',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'We aim to connect people with the freshness of the sea. '
              'OceanCatch ensures quality, cleanliness, and sustainability in every catch. '
              'Whether you’re preparing a family feast or a quick seafood dish, '
              'you can count on us for safe, flavorful, and responsibly sourced seafood products.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 25),
            const Text(
              'Our Promise',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              '🌊 100% Fresh and Sustainably Sourced\n'
              '🐟 Cleaned, packed, and delivered with care\n'
              '🦐 Affordable prices without compromising quality\n'
              '🦞 Customer satisfaction is always our top priority',
              style: TextStyle(fontSize: 16, height: 1.6),
            ),
            const SizedBox(height: 25),
            const Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              '📍 Pier 7, Coastal Road, Butuan City, Philippines\n'
              '📞 +63 927 654 3210\n'
              '✉️ support@oceancatchph.com',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                label: const Text('Back'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
