import 'package:flutter/material.dart';
import 'package:teknikalph_app/ui/favorites_page.dart';
import 'package:teknikalph_app/ui/orders_page.dart';
import 'package:teknikalph_app/ui/services_page.dart';
import 'package:teknikalph_app/ui/settings_page.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

//DAI PA NAKAKASEARCH, TEMPLATE PALANG
class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  PageController _pageController = PageController(initialPage: 0);

  final _bottomNavigationBarItems = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Services",),
    const BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: "Orders",),
    const BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favorites",),
    const BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings",),
  ];

  @override
  Widget build(BuildContext context){
     return Scaffold(
       body: PageView(
         controller: _pageController,
         onPageChanged: (newIndex){
           setState(() {
             _currentIndex = newIndex;
           });
         },
         children: const [
           ServicesPage(),
           OrdersPage(),
           FavoritesPage(),
           SettingsPage(),
         ],
       ),
       bottomNavigationBar: Container(
         decoration: const BoxDecoration(
             boxShadow: <BoxShadow>[
               BoxShadow(
                   color: Colors.black54,
                   blurRadius: 10.0,
                   offset: Offset(0.0,0.75)
               )
             ]
         ),
         child: BottomNavigationBar(
            items: _bottomNavigationBarItems,
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: (index) {
              _pageController.animateToPage(index, duration: const Duration(milliseconds: 500), curve: Curves.ease);
            },
         ),
       ),
     );
  }
}