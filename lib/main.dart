import 'package:flutter/material.dart';

import 'Home/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text(title),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Text(
                'User Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Username'),
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text('user@example.com'),
            ),
            ListTile(
              leading: const Icon(Icons.link),
              title: const Text('Social Media Accounts'),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth >= 600) {
              // If the screen width is greater than or equal to 600 (tablet or web),
              // display a two-column layout.
              return Row(
                children: [
                  Expanded(
                    child: SidePanel(),
                  ),
                  Expanded(
                    flex: 2,
                    child: ContentPanel(),
                  ),
                  Expanded(
                    child: StudentProfile(),
                  ),
                ],
              );
            } else {
              // If the screen width is less than 600 (mobile),
              // display a single-column layout.
              return Column(
                children: [
                  Expanded(
                    child: StudentProfile(),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}

class SidePanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Center(
        child: Text('Side Panel111'),
      ),
    );
  }
}

class ContentPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text('Content Panel'),
      ),
    );
  }
}

class StudentProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Name: R Swasthik',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8),
          Text(
            '7th Semester, CSE',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Reva University',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Android Application Developer',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
