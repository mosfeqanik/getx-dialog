import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.black87,
                  border: Border.all(
                    color: Colors.black87,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextButton(
                child: const Text(
                  'Show bottomSheet',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  // Get.defaultDialog();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}