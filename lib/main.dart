import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Lottery App')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text("Lottery Winning number is 4")),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: a == 4 ? 600 : 250,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: a == 4 ?
                Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Icon(
                            Icons.done_all_outlined,
                            color: Colors.green .withOpacity(1),
                            size: 35,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                          'Congratulations you have won the lottery , your winning number is $a \n',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Icon(
                            Icons.error_outline_sharp,
                            color: Colors.red.withOpacity(1),
                            size: 35,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Better luck next time your number is $a \n try again ',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
         onPressed: () {
            print('tap');
            a = random.nextInt(10);
            print(a);
            setState(() {});
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
