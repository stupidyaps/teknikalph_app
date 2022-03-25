import 'package:flutter/material.dart';
import 'package:teknikalph_app/ui/booking_page.dart';
import 'package:teknikalph_app/ui/settings_page.dart';

class TradesmenPage extends StatefulWidget{
  final String serviceName;

  const TradesmenPage({Key? key, required this.serviceName}) : super(key: key);

  @override
  _TradesmenPageState createState() => _TradesmenPageState();
}

//DAI PA NAKAKASEARCH, TEMPLATE PALANG
class _TradesmenPageState extends State<TradesmenPage> {
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
                color: Colors.black54,
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

  Widget _createTradesmanBtn(String tName){
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
        child: Text(tName,
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
            MaterialPageRoute(builder: (context) => BookingPage(tradesmanName: tName, serviceName: widget.serviceName,))
          );
          debugPrint("Worker $tName Tapped");
        },
      ),
    );
  }

  //For User Picture
  Widget _createUserPic(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
            alignment: Alignment.centerLeft,
            child:
              Text(widget.serviceName+" Tradesmen",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
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
      // appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(45),
      //   child: AppBar(
      //       backgroundColor: Colors.white,
      //       iconTheme: const IconThemeData(color: Colors.black),
      //       elevation: 0,
      //     ),
      // ),
      body: Stack(
        children: <Widget>[
          SizedBox(
            height: double.infinity,
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(30,200,30,20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  const SizedBox(height: 15.0,),
                  Column(
                    children: <Widget>[
                      _createTradesmanBtn("Juan Dela Cruz"),
                      _createTradesmanBtn("Asiong Salonga"),
                      _createTradesmanBtn("Nico Ipo"),
                      _createTradesmanBtn("Kitty Sanchez"),
                      _createTradesmanBtn("Axel Rosas"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: Container(
              height: 200,
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
                _createSearchBox(),
              ],
            ),
            ),
          ),
        ],
      ),
    );
  }
}