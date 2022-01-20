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
                  Get.defaultDialog(
                      title: 'Dialog Tittle',
                      titleStyle: const TextStyle(fontSize: 20),
                      middleText: 'Middle Text',
                      middleTextStyle: const TextStyle(fontSize: 25),
                      backgroundColor: Colors.purple,
                      radius: 60,

                      ///To customize the middle text
                      content: Row(
                        children: const [
                          CircularProgressIndicator(),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(child: Text('Data Loading'))
                        ],
                      ),

                      ///Default Cancel and Confirm action button
                      textCancel: "Cancel",
                      cancelTextColor: Colors.white,
                      textConfirm: 'Confirm',
                      confirmTextColor: Colors.white,
                      onCancel: () {
                        print('cancel button is clicked');
                      },
                      onConfirm: () {
                        print('confirm button is clicked');
                      },
                      buttonColor: Colors.green,

                      ///customize the default cancel and confirm
                      //override the default cancel and confirm
                      cancel: Text(
                        'Cancels',
                        style: TextStyle(color: Colors.green),
                      ),
                      confirm: Text(
                        "Confirm",
                        style: TextStyle(color: Colors.grey),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text('Action-1'),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('Action-2'),
                        ),
                      ]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}