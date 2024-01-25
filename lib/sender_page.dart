import 'package:flutter/material.dart';
import 'receiver_page.dart';

class SenderPage extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();
  final TextEditingController _textEditingController2 = TextEditingController();
  final TextEditingController _textEditingController3 = TextEditingController();
  final TextEditingController _textEditingController4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(179, 255, 208, 2),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 33, 49, 145),
        elevation: 15,
        shadowColor: Color.fromARGB(255, 98, 149, 243),
        title: Text(
          'NATIONAL UNIVERSITY',
          style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add the image container above the student information
            Container(
              width: 150.0, // Adjust the width as needed
              height: 150.0, // Adjust the height as needed
              margin: EdgeInsets.only(bottom: 20.0), // Add margin to separate from text
              child: Image.asset('assets/nulogo.png'),
            ),
            Text(
              'STUDENT INFORMATION',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              color: Color.fromARGB(166, 255, 255, 255),
              width: 500.0,
              height: 50.0,
              margin: EdgeInsetsDirectional.all(10),
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              color: Color.fromARGB(166, 255, 255, 255),
              width: 500.0,
              height: 50.0,
              margin: EdgeInsetsDirectional.all(10),
              child: TextField(
                controller: _textEditingController2,
                decoration: InputDecoration(
                  labelText: 'Student No.',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              color: Color.fromARGB(166, 255, 255, 255),
              width: 500.0,
              height: 50.0,
              margin: EdgeInsetsDirectional.all(10),
              child: TextField(
                controller: _textEditingController3,
                decoration: InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              color: Color.fromARGB(166, 255, 255, 255),
              width: 500.0,
              height: 50.0,
              margin: EdgeInsetsDirectional.all(10),
              child: TextField(
                controller: _textEditingController4,
                decoration: InputDecoration(
                  labelText: 'Contact No.',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                String enteredText = _textEditingController.text;
                String enteredText2 = _textEditingController2.text;
                String enteredText3 = _textEditingController3.text;
                String enteredText4 = _textEditingController4.text;

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReceiverPage(
                      fullname: enteredText,
                      studentno: enteredText2,
                      address: enteredText3,
                      contactno: enteredText4,
                    ),
                  ),
                );
              },
              child: Text('SUBMIT'),

            ),
          ],
        ),
      ),
    );
  }
}
