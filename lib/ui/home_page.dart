import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teknikalph_app/ui/favorites_page.dart';
import 'package:teknikalph_app/ui/orders_page.dart';
import 'package:teknikalph_app/ui/services_page.dart';
import 'package:teknikalph_app/ui/settings_page.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final _bottomNavigationBarItems = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Services",),
    const BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: "Orders",),
    const BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.heart), label: "Favorites",),
    const BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings",),
  ];

  List<Widget> pageList = <Widget>[
    const ServicesPage(),
    const OrdersPage(),
    const FavoritesPage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context){
     return Scaffold(
       body: PageTransitionSwitcher (
         transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
         FadeThroughTransition(
             animation: primaryAnimation,
             secondaryAnimation: secondaryAnimation,
           child: child,
         ),
         child: pageList[_currentIndex],
       ),
       bottomNavigationBar: BottomNavigationBar(
            items: _bottomNavigationBarItems,
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: (index) {
                debugPrint("Page $index Tapped");
              setState(() {
                _currentIndex = index;
              });
            },
         selectedItemColor: const Color(0xfffe8161),
         ),
     );
  }
}