
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person,
                size: 45,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Lemuelle',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text('Software Engineering Student'),
            const Text('The ICT University'),
          ],
        ),
      ),
    );
  }
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My First App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueGrey,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth =
        MediaQuery.of(context).size.width;

    debugPrint('Screen width: $screenWidth dp');


final List<Map<String, String>> items = [
  {
    'name': 'Laptop',
    'description': 'A computer for programming',
  },
  {
    'name': 'Smartphone',
    'description': 'A device for mobile applications',
  },
  {
    'name': 'Headphones',
    'description': 'An audio listening device',
  },
];
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First App'),
      ),
      body: ListView.builder(
  padding: const EdgeInsets.all(16),
  itemCount: items.length,
  itemBuilder: (context, index) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: const Icon(
          Icons.devices,
          color: Colors.blue,
        ),
        title: Text(items[index]['name']!),
        subtitle: Text(items[index]['description']!),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  },
),
    );
  }
}