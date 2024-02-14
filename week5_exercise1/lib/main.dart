import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        color: const Color.fromARGB(255, 16, 49, 77),
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Text(
              'Welcome back',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 50),
            Text(
              'Login to continue',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              'Username',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Enter your username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Password',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Enter your password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String username = _usernameController.text.trim();
                if (username.isNotEmpty) {
                  // Handle login
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomeUserPage(username: username)),
                  );
                } else {
                  // Show error message or handle empty username
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class WelcomeUserPage extends StatelessWidget {
  final String username;

  WelcomeUserPage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome back, $username!'),
        automaticallyImplyLeading: false, // Hide default back button
      ),
      body: Container(
        color: const Color.fromARGB(255, 16, 49, 77),
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context); // Navigate back to the login page
                  },
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: Column(
                children: [
                  Spacer(),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome back!',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Text(
                          username,
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            // Handle next button
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'Next',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

