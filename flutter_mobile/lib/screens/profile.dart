import 'package:flutter/material.dart';
import 'package:flutter_mobile/screens/activity.dart';
import 'package:flutter_mobile/screens/add.dart';
import 'package:flutter_mobile/screens/home.dart';
import 'package:flutter_mobile/screens/login.dart';
import 'package:flutter_mobile/screens/message.dart';
import 'package:flutter_mobile/screens/update_profile.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Update()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith(
                  (states) => Color.fromARGB(255, 224, 228, 5),
                ),
              ),
              child: Text("Edit Profile"),
            ),
            SizedBox(height: 20), // Adding space between buttons
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Activity()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith(
                  (states) => Color.fromARGB(255, 224, 228, 5),
                ),
              ),
              child: Text("My Activities"),
            ),
            SizedBox(height: 20), // Adding space between buttons
            ElevatedButton(
              onPressed: () {
                // Show confirmation dialog before logging out
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Confirm Log Out"),
                      content: Text("Are you sure you want to log out?"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Close the dialog
                          },
                          child: Text("Cancel"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                          child: Text("Log Out"),
                        ),
                      ],
                    );
                  },
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith(
                  (states) => Color.fromARGB(255, 224, 228, 5),
                ),
              ),
              child: Text("Log Out"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.blue[800],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              icon: Icon(Icons.home, color: Colors.white),
            ),
            // No need to navigate to Message screen again
            // Just keep it as a selected icon
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Message()),
                );
              },
              icon: Icon(Icons.message, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Add()),
                );
              },
              icon: Icon(Icons.add, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
              icon: Icon(Icons.person, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
