import 'dart:math'; // Import the dart:math library for Random class

import 'package:flutter/material.dart';

class ReceiverPage extends StatelessWidget {
  // Declare a variable to store the received data
  final String fullname;
  final String studentno;
  final String address;
  final String contactno;

  // Constructor to receive the data when the page is created
  ReceiverPage({
    required this.fullname,
    required this.studentno,
    required this.address,
    required this.contactno,
  });

  @override
  Widget build(BuildContext context) {
    // Generate a random number between 1 and 50
    int randomNumber = Random().nextInt(40) + 1;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 33, 49, 145),
        elevation: 15,
        title: Text(
          'DETAILS',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white), // Set the text color to white
        ),
      ),
      body: Container(
        // Use a BoxDecoration with a DecorationImage for the background image
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/nubuildingmain.png'), // Replace with your image asset path
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container for "Received Data" text
              Container(
                child: Column(
                  children: [
                    Text('YOUR SEAT NUMBER IS:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
                    SizedBox(height: 5),
                    // Display the randomly generated number
                    Text('$randomNumber', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.black)),
                  ],
                ),
              ),
              SizedBox(height: 10),
              // Container for "Full Name" text
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  fullname,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal, color: Colors.black),
                ),
              ),
              SizedBox(height: 10),
              // Container for "Student No" text
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  studentno,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal, color: Colors.black),
                ),
              ),
              SizedBox(height: 10),
              // Container for "Address" text
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  address,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal, color: Colors.black),
                ),
              ),
              SizedBox(height: 10),
              // Container for "Contact No" text
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  contactno,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal, color: Colors.black),
                ),
              ),
              SizedBox(height: 20),
              // Container for bottom text
              Align(
  alignment: Alignment.bottomCenter,
  child: Container(
    margin: EdgeInsets.only(top: 50), // Add margin top
    child: Text(
      '*KINDLY TAKE A SCREENSHOT OF THIS PAGE, IT IS A MUST.*',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 255, 0, 0)),
    ),
  ),
),
Align(
  alignment: Alignment.bottomCenter,
  child: Container(
    margin: EdgeInsets.only(top: 15), // Add margin top
    child: Text(
      'Goodluck on your Examination Day, Nationalian!',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
    ),
  ),
),
Align(
  alignment: Alignment.bottomCenter,
  child: Container(
    margin: EdgeInsets.only(top: 50), // Add margin top
    child: Text(
      '',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 255, 0, 0)),
    ),
  ),
),
Align(
  alignment: Alignment.bottomCenter,
  child: Container(
    margin: EdgeInsets.only(top: 15), // Add margin top
    child: Text(
      'Education that Works',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal, fontStyle: FontStyle.italic, color: Colors.black),
    ),
  ),
),
            ],
          ),
        ),
      ),
    );
  }
}
