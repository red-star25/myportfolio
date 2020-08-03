import 'package:flutter/material.dart';

import 'Screens/LargeScreen.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return LargeScreen();
        } else if (constraints.maxWidth < 1200 && constraints.maxWidth > 800) {
          return LargeScreen();
        } else {
          return LargeScreen();
        }
      },
    );
  }
}
