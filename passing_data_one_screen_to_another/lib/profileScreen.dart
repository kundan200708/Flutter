import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  var namefromhome;

  ProfileScreen(this.namefromhome, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My_profile_page')),
      body: Container(
        color: Colors.blueGrey.shade200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome!! Mr $namefromhome",
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
