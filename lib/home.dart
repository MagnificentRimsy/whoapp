import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:who/dashboard.dart';
import 'package:who/help.dart';
import 'package:page_transition/page_transition.dart';
import 'package:who/newTicket.dart';
import 'package:who/profile.dart';
import 'package:who/ticketDetails.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  PageController _pageController = PageController();
  List<Widget> _screens = [
    DashboardPage(),
    // TicketDetails(),
    HelpPage(),
    ProfilePage()
  ];

  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: HexColor('#0093D5'),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 18,
        unselectedFontSize: 14,
        onTap: _onItemTapped,
        // type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 0 ? HexColor('#0093D5') : Colors.grey,
            ),
            // ignore: deprecated_member_use
            title: Text(
              'Home',
              style: TextStyle(
                  color:
                      _selectedIndex == 0 ? HexColor('#0093D5') : Colors.grey),
            ),
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.chat,
          //       color: _selectedIndex == 1 ? HexColor('#0093D5') : Colors.grey),
          //   // ignore: deprecated_member_use
          //   title: Text(
          //     'Tickets',
          //     style: TextStyle(
          //         color:
          //             _selectedIndex == 1 ? HexColor('#0093D5') : Colors.grey),
          //   ),
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_center,
                color: _selectedIndex == 1 ? HexColor('#0093D5') : Colors.grey),
            // ignore: deprecated_member_use
            title: Text(
              'Help',
              style: TextStyle(
                  color:
                      _selectedIndex == 1 ? HexColor('#0093D5') : Colors.grey),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle_outlined,
                color: _selectedIndex == 2 ? HexColor('#0093D5') : Colors.grey),
            // ignore: deprecated_member_use
            title: Text(
              'Profile',
              style: TextStyle(
                  color:
                      _selectedIndex == 2 ? HexColor('#0093D5') : Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
