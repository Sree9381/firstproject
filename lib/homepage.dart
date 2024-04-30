import 'package:firstproject/secondpage.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            height: 500,
            'assets/time.jpg',
            fit: BoxFit.fitHeight,
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 30),
                const Text(
                  'Your Productive Task Manager',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20),
                const Text(
                  'This smart tool is designed to help you manage yoyr tasks in better way',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 50),
                SizedBox(
                  width: 500,
                  child: TextButton(
                    style: const ButtonStyle(
                        iconSize: MaterialStatePropertyAll(30),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 142, 219, 211)),
                        padding: MaterialStatePropertyAll(
                            EdgeInsets.fromLTRB(30, 20, 30, 20))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SecondPage(),
                          ));
                    },
                    child: const Text(
                      'CONTINUE',
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
