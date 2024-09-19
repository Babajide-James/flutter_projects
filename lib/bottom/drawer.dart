import 'package:flutter/material.dart';

class Drawers extends StatelessWidget {
  const Drawers({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shadowColor: const Color.fromARGB(34, 120, 200, 100),
      width: 250,
      backgroundColor: const Color.fromARGB(255, 255, 120, 201),
      child: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const DrawerHeader(child: Icon(Icons.favorite)),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/profile');
              },
            ),
            // Padding(padding: EdgeInsets.only(top: 20)),
            // Padding(padding: EdgeInsets.only(top: 20)),
            ListTile(
              leading: const Icon(Icons.business),
              title: const Text('Business Information'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/business');
              },
            ),
            // Padding(padding: EdgeInsets.only(top: 20)),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Qualifications'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/school');
              },
            ),
          ],
        ),
      ),
    );
  }
}
