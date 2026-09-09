import "package:app8/generate_qr%20_code.dart";

import "package:flutter/material.dart";

void main() {
  runApp(myapp_scanner());
}

class myapp_scanner extends StatelessWidget {
  const myapp_scanner({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: " Qr_code Scanner and Bar code generator  app",
      home: Scanner_app(),
    );
  }
}

class Scanner_app extends StatefulWidget {
  const Scanner_app({super.key});

  @override
  State<Scanner_app> createState() => _Scanner_appState();
}

class _Scanner_appState extends State<Scanner_app> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bar code generator"),
        titleTextStyle: TextStyle(fontSize: 30),
        backgroundColor: Colors.amber,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
              print("qr button pressed");
              },onLongPress: (){print("qr button long pressed");},
              
              child: Text("scan Qr code "),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => generate_qr_code()),
                  );
                });
              },
              child: Text("Generate Qr code"),
            ),
          ],
        ),
      ),
    );
  }
}
