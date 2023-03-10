import 'package:flutter/material.dart';
//import 'package:projet_se_loger/screenPage/home/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    super.initState();
    // super.initState();
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(76, 33, 149, 243),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset('images/LOGO.jpg'),
        ]),
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() => animate = true);
    await Future.delayed(const Duration(milliseconds: 3000));
    // ignore: use_build_context_synchronously
    // Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //         builder: (context) =>
    //         // const MyHomePage(
    //         //       title: 'Se Loger à Douala',
    //             //   user: null,
    //             // )));
  }
}
