import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Activity"),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: 400,
              height: 100,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hello, Container!',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20), // Adding space between text and buttons
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Color.fromARGB(255, 228, 5, 5)),
                      foregroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.white),
                    ),
                    child: Text("Delete"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
