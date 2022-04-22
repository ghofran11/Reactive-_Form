import 'package:flutter/material.dart';

import 'main.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Login sample'),
              onTap: () => Navigator.of(context).pushReplacementNamed(
                Routes.loginSample,
              ),
            ),

            ListTile(
              title: const Text('Simple sample'),
              onTap: () => Navigator.of(context).pushReplacementNamed(
                Routes.simple,
              ),
            ),
            ListTile(
              title: const Text('Login'),
              onTap: () => Navigator.of(context).pushReplacementNamed(
                Routes.login,
              ),
            ),

            // ListTile(
            //   title: Text('Disable form sample'),
            //   onTap: () => Navigator.of(context).pushReplacementNamed(
            //     Routes.disableFormSample,
            //   ),
            // ),
            // ListTile(
            //   title: Text('Add dynamic controls'),
            //   onTap: () => Navigator.of(context).pushReplacementNamed(
            //     Routes.addDynamicControls,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
