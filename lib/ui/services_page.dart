import 'package:flutter/material.dart';
import 'package:teknikalph_app/ui/tradesmen_page.dart';
// import 'package:material_floating_search_bar/material_floating_search_bar.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ServicesPage extends StatefulWidget{
  const ServicesPage({Key? key}) : super(key: key);

  @override
  _ServicesPageState createState() => _ServicesPageState();
}

//DAI PA NAKAKASEARCH, TEMPLATE PALANG
class _ServicesPageState extends State<ServicesPage> {
  Widget _createSearchBox(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all(color: Colors.black),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          height: 55.0,
          child: const TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Color(0xff000000),
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 15.0),
              prefixIcon: Icon(
                Icons.search,
                color: Color(0xff000000),
              ),
              hintText: "Search",
              hintStyle: TextStyle(
                color: Colors.black45,
              ),
            ),
          ),
        )
      ],
    );
  }

  // TEMPORARILY WILL REDIRECT TO ONE PAGE ONLY -> TRADESMEN PAGE
  Widget _createServiceBtn(String sName){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
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
            MaterialPageRoute(builder: (context) => const TradesmenPage()),
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
              "Services",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            )
        ),
        const SizedBox(width:150),
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
                  _createSearchBox(),
                  const SizedBox(height: 15.0,),
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(child: _createServiceBtn("Plumbing")),
                          const SizedBox(width: 15.0),
                          Expanded(child: _createServiceBtn("Carpentry")),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(child: _createServiceBtn("Cleaning")),
                          const SizedBox(width: 15.0),
                          Expanded(child: _createServiceBtn("Shopping")),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(child: _createServiceBtn("Cooking")),
                          const SizedBox(width: 15.0),
                          Expanded(child: _createServiceBtn("Yardwork")),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(child: _createServiceBtn("Mechanical")),
                          const SizedBox(width: 15.0),
                          Expanded(child: _createServiceBtn("Electrical")),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(child: _createServiceBtn("Bills")),
                          const SizedBox(width: 15.0),
                          Expanded(child: _createServiceBtn("Gardening")),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(child: _createServiceBtn("Carpentry")),
                          const SizedBox(width: 15.0),
                          Expanded(child: _createServiceBtn("Carpentry")),
                        ],
                      ),
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