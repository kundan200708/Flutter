import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class generate_qr_code extends StatefulWidget {
  const generate_qr_code({super.key});

  @override
  State<generate_qr_code> createState() => _generate_qr_codeState();
}

class _generate_qr_codeState extends State<generate_qr_code> {
  
  final TextEditingController urlController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("generate_qr_code")),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (urlController.text.isNotEmpty)
                QrImageView(data: urlController.text, size: 200),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: TextField(
                  controller: urlController,
                  decoration: InputDecoration(
                    hintText: "Enter your data",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: "enter data",
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text("generate qr code"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
