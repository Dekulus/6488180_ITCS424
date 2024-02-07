import 'package:flutter/material.dart';

void main() {
  runApp(SettingsPage());
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Settings Page'),
        ),
        body: Container(
          color: const Color.fromARGB(255, 16, 49, 77),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: Image.asset('asset/appimages/JohnDoe.jpg').image,
                    ),
                    SizedBox(width: 120),
                    Expanded(
                      child: Text(
                        'John Doe',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Settings',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 10),
                OptionTile(title: 'Privacy'),
                OptionTile(title: 'Theme'),
                OptionTile(title: 'Change Language'),
                Expanded(child: Container()),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomSheetNavigation(),
      ),
    );
  }
}

class OptionTile extends StatelessWidget {
  final String title;

  OptionTile({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(title),
        onTap: () {
          // Navigate or perform action
        },
      ),
    );
  }
}

class BottomSheetNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.0),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomSheetItem(icon: Icons.home, title: 'Home'),
          BottomSheetItem(icon: Icons.folder_copy_rounded, title: 'Saved'),
          BottomSheetItem(icon: Icons.settings, title: 'Settings'),
        ],
      ),
    );
  }
}

class BottomSheetItem extends StatelessWidget {
  final IconData icon;
  final String title;

  BottomSheetItem({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Color.fromARGB(255, 99, 98, 98)),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(color: Color.fromARGB(255, 99, 98, 98)),
        ),
      ],
    );
  }
}
