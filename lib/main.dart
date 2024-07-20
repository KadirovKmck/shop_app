import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_app/src/views/home_view/home_view.dart';
import 'package:shop_app/src/views/navbar_view/navbar_view.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: ThemeData(
            fontFamily: 'SFPRODISPLAY',
            primarySwatch: Colors.blue,
          ),
          debugShowCheckedModeBanner: false,
          home: const NavbarView(),
        );
      },
    );
  }
}
