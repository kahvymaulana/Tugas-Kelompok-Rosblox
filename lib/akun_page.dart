import 'package:flutter/material.dart';

class AkunPage extends StatelessWidget {
  const AkunPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: 'profil',
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage('assets/images/anggota1.jpg'),
            ),
            const SizedBox(height: 16),
            Text(
              'Kahvy Maulana',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const Text('Mahasiswa Informatika - UNSUR'),
            const SizedBox(height: 8),
            Text(
              'Email: kahvy@example.com',
              style: TextStyle(color: Theme.of(context).colorScheme.secondary),
            ),
          ],
        ),
      ),
    );
  }
}
