import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/controller/auth_controller.dart';
import 'package:todo_app/widgets/todo_logo.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      Get.put(AuthController());
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TodoLogo(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                width: 50,
                child: LinearProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
