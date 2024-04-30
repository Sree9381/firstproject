import 'package:flutter/material.dart';
import 'package:firstproject/secondpage.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Expanded(
              child: Image.asset('assets/bg.png'),
            ),
            const SizedBox(height: 30),
            const Text(
              'Your Productive Task Manager',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),
            const Text(
              'This smart tool is designed to help you manage your tasks in a better way',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange.shade900,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: const Size(double.infinity, 60),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  ),
                );
              },
              child: const Text(
                'CONTINUE',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
