import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile Screen'),
          centerTitle: true,
        ),
        body: ProfileScreen(),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.lock),
              label: 'Privacy Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.security),
              label: 'Security Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.payment),
              label: 'Payment Info',
            ),
          ],
          selectedItemColor: Colors.blue, // Active item color
          unselectedItemColor: const Color.fromARGB(255, 248, 6, 6), // Inactive item color
          currentIndex: 0, // To highlight the active item (you can set this dynamically)
          onTap: (index) {
            // Handle navigation based on the index
          },
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(36.0),
      child: Column(
        children: [
          Stack(
            children: [
          Container(
  width: 100,
  height: 100,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    image: DecorationImage(
      image: NetworkImage('https://th.bing.com/th/id/OIP.IGNf7GuQaCqz_RPq5wCkPgHaLH?w=135&h=202&c=7&r=0&o=5&pid=1.7'),
      fit: BoxFit.cover,
    ),
  ),
),

              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color.fromARGB(255, 252, 4, 4),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'John Doe',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'Software Engineer at GPT-TECH',
            style: TextStyle(fontSize: 14, color: Colors.grey[600]),
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.facebook, color: Colors.blue),
              SizedBox(width: 16),
              Icon(Icons.alternate_email, color: Colors.blue), // Replaced Twitter icon
              SizedBox(width: 16),
              Icon(Icons.business_center, color: Colors.blue), // Replaced LinkedIn icon
            ],
          ),
          SizedBox(height: 24),
          Expanded(
            child: ListView(
          children: [
                ListTile(
                  title: Text(
                    'Frontend with React',
                    textAlign: TextAlign.center,  // Centering the title
                  ),
                  subtitle: Text(
                    'Description of activity 1',
                    textAlign: TextAlign.center,  // Centering the subtitle
                  ),
                ),
                ListTile(
                  title: Text(
                    'Backend with Django',
                    textAlign: TextAlign.center,  // Centering the title
                  ),
                  subtitle: Text(
                    'Description of activity 2',
                    textAlign: TextAlign.center,  // Centering the subtitle
                  ),
                ),
                // Add more ListTiles for additional activities
              ],
            ),
          ),
        ],
      ),
    );
  }
}
