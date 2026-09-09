import 'package:flutter/material.dart';
import 'package:passing_data_one_screen_to_another/profileScreen.dart';
import 'package:passing_data_one_screen_to_another/splashScreen.dart';

void main() {
  runApp(My_app());
}

class My_app extends StatelessWidget {
  const My_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "passing_data_one_screen_to_another_Screen",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey),
      ),
      home: Splashscreen(),
    );
  }
}

class homemeta extends StatefulWidget {
  @override
  const homemeta({super.key});

  @override
  State<homemeta> createState() => _homemetaState();
}

class _homemetaState extends State<homemeta> {
  var namecontroller = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Passing_data_from_one_screen_to_another'),
        titleSpacing: 25,
        titleTextStyle: TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Dashboard_screen",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 15),
              TextField(controller: namecontroller,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade200,
                  filled: true,

                  hintText: "Enter You Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ProfileScreen(namecontroller.text.toString()),
                    ),
                  );
                },
                child: Text('My_Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
