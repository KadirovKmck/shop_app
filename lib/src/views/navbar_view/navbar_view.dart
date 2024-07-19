import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/src/views/home_view/home_view.dart';

class NavbarView extends StatefulWidget {
  const NavbarView({super.key});

  @override
  State<NavbarView> createState() => _NavbarViewState();
}

class _NavbarViewState extends State<NavbarView> {
  int _currentIndex = 0;

  final List<Widget> _views = [
    const HomeView(),
    Container(color: Colors.white), // FolderView
    Container(color: Colors.white), // ScannerView
    Container(color: Colors.white), // ChatView
    Container(color: Colors.white), // BagView
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _views[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          // borderRadius: BorderRadius.circular(30),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
        ),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color(0xFFF4F4F4),
            selectedItemColor: const Color(0xFFE1E1E1),
            unselectedItemColor: Colors.black,
            onTap: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            items: [
              _buildBottomNavigationBarItem(
                iconPath: 'assets/icons/home.svg',
                label: '',
              ),
              _buildBottomNavigationBarItem(
                iconPath: 'assets/icons/folder.svg',
                label: '',
              ),
              _buildBottomNavigationBarItem(
                iconPath: 'assets/icons/scanner.svg',
                label: '',
              ),
              _buildBottomNavigationBarItem(
                iconPath: 'assets/icons/message.svg',
                label: '',
              ),
              _buildBottomNavigationBarItem(
                iconPath: 'assets/icons/bag.svg',
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({
    required String iconPath,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        iconPath,
        height: 35,
      ),
      activeIcon: Container(
        width: 66,
        height: 66,
        decoration: ShapeDecoration(
          color: const Color(0xFFE1E1E1),
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(50), // Circular border for rounded effect
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SvgPicture.asset(
            iconPath,
            width: 35,
            height: 35,
          ),
        ),
      ),
      label: label,
    );
  }
}
