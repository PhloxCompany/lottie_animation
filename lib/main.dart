import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LottieTest(),
    );
  }
}

class LottieTest extends StatelessWidget {
  const LottieTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Card(
                color: Colors.redAccent,
                elevation: 18,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Lottie.asset('assets/lottie/dance.json') // lottie widget here
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            '403',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold , fontSize: 80),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Access forbidden',
            style: TextStyle(color: Colors.black , fontSize: 30),
          ),
        ],
      ),
    );
  }
}