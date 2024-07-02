import 'package:flutter/material.dart';

void main() {
  runApp(AboutUsApp());
}

class AboutUsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'About Us',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: AboutUsPage(),
    );
  }
}

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Welcome to Our Medical Clinic',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Our Mission:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.black,),
            ),
            SizedBox(height: 15),
            Text(
              'To provide compassionate and high-quality healthcare to our community, ensuring every patient feels valued and supported.',
              style: TextStyle(fontSize: 16,color: Colors.black),

            ),
            SizedBox(height: 20),
            Text(
              'Meet Our Team:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/doctor3.jpg"),
              ),
              title: Text('Dr. Sumit Kumar - Cardiologist'),
              subtitle: Text('15+ years of experience'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/doctor2.jpg"),
              ),
              title: Text('Dr.Khusi Bhatt - Pediatrician'),
              subtitle: Text('10+ years of experience'),
            ),
            // Add more team members here as needed
            SizedBox(height: 20),
            Text(
              'Contact Us:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '123 Main Street, City, Country\nPhone: +1 (123) 456-7890\nEmail: info@medicalclinic.com',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}