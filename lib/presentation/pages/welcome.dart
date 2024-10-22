import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 90, horizontal: 30),
                  child: Center(
                    child: SizedBox(
                      width: 1000.0,
                      height: 200,
                      child: Text(
                        'Bienvenidos a UI UNIVERSIDADES GP',
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 200.0),
                ElevatedButton(
                    //onPressed: () => Get.toNamed('/form1'),
                    onPressed: () => Get.toNamed('/login'),
                    child: const Icon(Icons.arrow_circle_right_sharp,
                        color: Colors.blueAccent))
              ],
            ),
          )
        ],
      ),
    );
  }
}
