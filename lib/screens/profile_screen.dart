import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // Variables to hold user data
  String _name = '';
  String _email = '';
  String _password = '';
  // DateTime _dateOfBirth;
  String _countryRegion = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                // Implement functionality to change profile picture
              },
              child: CircleAvatar(
                radius: 50,
                // Placeholder avatar, you can replace it with the user's profile picture
                backgroundImage: AssetImage("images/doctor3.jpg"),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Name:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextFormField(
              initialValue: _name,
              onChanged: (value) {
                setState(() {
                  _name = value;
                });
              },
            ),
            SizedBox(height: 10),
            Text(
              'Email:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextFormField(
              initialValue: _email,
              onChanged: (value) {
                setState(() {
                  _email = value;
                });
              },
            ),
            SizedBox(height: 10),
            Text(
              'Password:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextFormField(
              initialValue: _password,
              onChanged: (value) {
                setState(() {
                  _password = value;
                });
              },
              obscureText: true,
            ),
            // SizedBox(height: 10),
            // Text(
            //   'Date of Birth:',
            //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            // ),
            // InkWell(
            //   onTap: () {
            //     // Implement date picker
            //   },
            //   child: Text(
            //     _dateOfBirth != null
            //         ? _dateOfBirth.toString()
            //         : 'Select Date of Birth',
            //     style: TextStyle(fontSize: 16, color: Colors.blue),
            //   ),
            // ),
            SizedBox(height: 10),
            Text(
              'Country/Region:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextFormField(
              initialValue: _countryRegion,
              onChanged: (value) {
                setState(() {
                  _countryRegion = value;
                });
              },
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Implement save functionality
              },
              child: Text('Save'),

            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProfileScreen(),
  ));
}


// import 'package:flutter/material.dart';
//
// class ProfileScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CircleAvatar(
//               radius: 50,
//               // Placeholder avatar, you can replace it with the user's profile picture
//               backgroundImage: AssetImage('assets/avatar_placeholder.png'),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'John Doe', // Replace with the user's name
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'john.doe@example.com', // Replace with the user's email
//               style: TextStyle(fontSize: 18, color: Colors.grey),
//             ),
//             SizedBox(height: 30),
//             ElevatedButton(
//               onPressed: () {
//                 // Implement logout functionality
//                 // For demonstration purpose, let's just navigate back
//                 Navigator.pop(context);
//               },
//               child: Text('Log out'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(MaterialApp(
//     home: ProfileScreen(),
//   ));
// }
