import 'package:flutter/material.dart';
import 'package:teknikalph_app/ui/progress_page.dart';
import 'package:teknikalph_app/ui/settings_page.dart';


class OrdersPage extends StatefulWidget{
  const OrdersPage({Key? key}) : super(key: key);

  @override
  _OrdersPageState createState() => _OrdersPageState();
}

//DAI PA NAKAKASEARCH, TEMPLATE PALANG
class _OrdersPageState extends State<OrdersPage> {

  Widget _createServiceBtn(String tName, String sName){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      width: double.infinity,
      height: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 2,
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: const BorderSide(
                width: 0.5,
                color: Colors.black26
            ),
          ),
          alignment: Alignment.bottomLeft,
          padding: const EdgeInsets.only(bottom: 10, left: 10),
        ),
        child: Text(tName+": "+sName,
          textAlign: TextAlign.left,
          style: const TextStyle(
            color: Color(0xFF014466),
            fontSize: 18,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProgressPage(tName: tName,sName: sName)),
          );
        },
      ),
    );
  }

  //For User Picture
  Widget _createUserPic(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
            alignment: Alignment.centerLeft,
            child:
            const Text(
              "Current Orders",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            )
        ),
        const SizedBox(width:85),
        GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsPage()),
              );
              debugPrint("User Profile Tapped");
            },
            child: Container(
              height: 60.0,
              width: 60.0,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0,2),
                      blurRadius: 6.0,
                    )
                  ],
                  image: DecorationImage(
                    image: AssetImage('assets/defaultUserImage.png'),
                  )
              ),
            )
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox(
            height: double.infinity,
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(30,125,30,20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 15.0,),
                  Column(
                    children: <Widget>[
                      _createServiceBtn("Nico Ipo","Mechanical"),
                      _createServiceBtn("Kitty Sanchez","Cleaning"),
                      _createServiceBtn("Annie Batungbakal","Laundry"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: Container(
              height: 130,
              padding: const EdgeInsets.fromLTRB(30,50,30,10),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end:  Alignment.centerRight,
                  colors: [
                    Color(0xfffe8161),
                    Color(0xfff4775e),
                    Color(0xffda5a59)
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),child: Column(
              children: <Widget>[
                _createUserPic(),
              ],
            ),
            ),
          ),
        ],
      ),
    );
  }
}