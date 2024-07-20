import 'package:flutter/material.dart';
import 'package:shop_app/src/views/home_view/home_view.dart';

class NavbarView extends StatefulWidget {
  const NavbarView({super.key});

  @override
  State<NavbarView> createState() => _NavbarViewState();
}

class _NavbarViewState extends State<NavbarView> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeView(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              GestureDetector(
                onTap: () => _onItemTapped(0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: ShapeDecoration(
                        color: _selectedIndex == 0
                            ? const Color(0xFFE1E1E1)
                            : Colors.transparent,
                        shape: const OvalBorder(),
                      ),
                      child: Icon(
                        Icons.home,
                        color: _selectedIndex == 0 ? Colors.black : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => _onItemTapped(1),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: ShapeDecoration(
                        color: _selectedIndex == 1
                            ? const Color(0xFFE1E1E1)
                            : Colors.transparent,
                        shape: const OvalBorder(),
                      ),
                      child: Icon(
                        Icons.folder,
                        color: _selectedIndex == 1 ? Colors.black : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => _onItemTapped(2),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: ShapeDecoration(
                        color: _selectedIndex == 2
                            ? const Color(0xFFE1E1E1)
                            : Colors.transparent,
                        shape: const OvalBorder(),
                      ),
                      child: Icon(
                        Icons.qr_code_scanner,
                        color: _selectedIndex == 2 ? Colors.black : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => _onItemTapped(3),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: ShapeDecoration(
                        color: _selectedIndex == 3
                            ? const Color(0xFFE1E1E1)
                            : Colors.transparent,
                        shape: const OvalBorder(),
                      ),
                      child: Icon(
                        Icons.chat_bubble_outline,
                        color: _selectedIndex == 3 ? Colors.black : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => _onItemTapped(4),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: ShapeDecoration(
                        color: _selectedIndex == 4
                            ? const Color(0xFFE1E1E1)
                            : Colors.transparent,
                        shape: const OvalBorder(),
                      ),
                      child: Icon(
                        Icons.shopping_bag,
                        color: _selectedIndex == 4 ? Colors.black : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
