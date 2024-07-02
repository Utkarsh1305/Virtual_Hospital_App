import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        children: [
          NotificationItem(
            icon: Icons.notifications,
            name: 'Dr. Abhishek',
            timeAgo: '2 hours ago',
            image: "images/doctor3.jpg", // Example image path
          ),
          NotificationItem(
            icon: Icons.notifications,
            name: 'Dr. Priya',
            timeAgo: '1 day ago',
            image: "images/doctor2.jpg", // Example image path
          ),
          NotificationItem(
            icon: Icons.notifications,
            name: 'Dr. Patel',
            timeAgo: '3 days ago',
            image: "images/doctor4.jpg", // Example image path
          ),
          // Add more NotificationItems as needed
        ],
      ),
    );

  }
}

class NotificationItem extends StatelessWidget {
  final IconData icon;
  final String name;
  final String timeAgo;
  final String image;

  const NotificationItem({
    Key? key,
    required this.icon,
    required this.name,
    required this.timeAgo,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),
      title: Text(name),
      subtitle: Text('Notification received $timeAgo'),
      onTap: () {
        // Add any action you want to perform when the notification is tapped
      },
    );

  }
}

