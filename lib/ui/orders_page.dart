import 'package:flutter/material.dart';
import 'package:teknikalph_app/ui/home_page.dart';


class OrdersPage extends StatefulWidget{
  const OrdersPage({Key? key}) : super(key: key);

  @override
  _OrdersPageState createState() => _OrdersPageState();
}

//DAI PA NAKAKASEARCH, TEMPLATE PALANG
class _OrdersPageState extends State<OrdersPage> {

  Widget _createServiceBtn(String sName){
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
                width: 1.0,
                color: Colors.black
            ),
          ),
          alignment: Alignment.bottomLeft,
          padding: const EdgeInsets.only(bottom: 10, left: 10),
        ),
        child: Text(sName,
          textAlign: TextAlign.left,
          style: const TextStyle(
            color: Color(0xff000000),
            fontSize: 18,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
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
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            )
        ),
        const SizedBox(width:85),
        GestureDetector(
            onTap: () => debugPrint("User Profile Tapped"),
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
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end:  Alignment.bottomCenter,
                  colors: [
                    Color(0xFFffffff),
                    Color(0xFFffffff),
                    Color(0xFFffffff),
                  ],
                )
            ),
          ),
          SizedBox(
            height: double.infinity,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 70.0
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _createUserPic(),
                  const SizedBox(height: 15.0,),
                  Column(
                    children: <Widget>[
                      _createServiceBtn("Nico Ipo"),
                      _createServiceBtn("Kitty Sanchez"),
                      _createServiceBtn("Annie Batungbakal"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}