import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  Icon(
                    Icons.calendar_month,
                    size: 30,
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Hey Sree!',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.black12,
                  labelText: 'Search Here',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    width: 190,
                    height: 150,
                    decoration: BoxDecoration(
                        border: Border.all(style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black12),
                    padding: const EdgeInsets.all(20),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.timelapse,
                          color: Colors.teal,
                        ),
                        Text('Meetings'),
                        Text(
                          'BrainStromming Session',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 190,
                    height: 150,
                    margin: const EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                        border: Border.all(style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black12),
                    padding: const EdgeInsets.all(20),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.timelapse,
                          color: Colors.teal,
                        ),
                        Text('Projects'),
                        Text(
                          'Tasks Web Application',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const Text(
                'Tasks',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              // how to push
              Column(
                children: List.generate(
                  5,
                  (index) => Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    decoration: boxDecoration(),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    child: const Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(
                          Icons.notes,
                          size: 30,
                          color: Colors.purple,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'UI Design',
                          style: TextStyle(fontSize: 20, color: Colors.purple),
                        ),
                        SizedBox(width: 10),
                        Divider(color: Colors.purple)
                      ],
                    ),
                  ),
                ).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration boxDecoration() {
    return BoxDecoration(
      color: Colors.grey.withOpacity(0.08),
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
    );
  }
}
