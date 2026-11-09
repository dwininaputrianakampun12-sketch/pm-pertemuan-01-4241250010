import 'package:flutter/material.dart';

void main() {
  runApp(const HelloApp());
}

class HelloApp extends StatelessWidget {
  const HelloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 27, 9, 71),
        ),
      ),
      home: const HelloPage(),
    );
  }
}

class HelloPage extends StatelessWidget {
  const HelloPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pemrograman Mobile'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const FlutterLogo(size: 96),
            const SizedBox(height: 16),
            // Widget Tambahan 1: Icon
            const Icon(
              Icons.developer_mode,
              size: 40,
              color: Color.fromARGB(255, 27, 9, 71),
            ),
            const SizedBox(height: 16),
            const Text(
              'Hello, World!',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Nama : Dwi Nina Putri Anakampun'),
            const Text('NIM  : 4241250010'),
            const Text('Kelas: Ilmu Komputer D 2024'),
            const SizedBox(height: 20),
            // Widget Tambahan 2: ElevatedButton
            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Tugas Rutin 1 Berhasil!')),
                );
              },
              icon: const Icon(Icons.check_circle),
              label: const Text('Klik Saya'),
            ),
          ],
        ),
      ),
    );
  }
}