// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;
  void counter() {
    count++;
  }

  void resetCounter() {
    count = 0;
  }

  void minusCounter() {
    count--;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 18, 62, 99),
        centerTitle: true,
        title: Text(
          "أذكار",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // width: MediaQuery.of(context).size.width / 1.50,
              // height: MediaQuery.of(context).size.height / 1.50,
              padding: EdgeInsets.all(150),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 18, 62, 99),
              ),
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Text(
                    count.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                padding: EdgeInsets.fromLTRB(50, 30, 50, 30),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromARGB(255, 18, 62, 99),
                ),
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          counter();
                        });
                      },
                      icon: Icon(
                        Icons.plus_one,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          minusCounter();
                        });
                      },
                      icon: Icon(
                        Icons.exposure_minus_1,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            resetCounter();
          });
          Icon(
            Icons.restart_alt_rounded,
            color: const Color.fromARGB(255, 172, 103, 103),
          );
        },
        backgroundColor: Color.fromARGB(255, 18, 62, 99),
        child: Icon(
          Icons.restart_alt_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}
