import 'package:flutter/material.dart';


class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}
class _AccountPageState extends State<AccountPage> {
  Widget _createTitle(){
    return Container(
        alignment: Alignment.centerLeft,
        child: const Text(
          "Account Settings",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        )
    );
  }

  Widget _createFirstName(){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 10.0),
           Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
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
                  Icons.person,
                  color: Color(0xff000000),
                ),
                hintText: "First Name",
                hintStyle: TextStyle(
                  color: Colors.black45,
                ),
              ),
            ),
          )
        ],
      );
    }
  Widget _createLastName(){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 10.0),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
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
                  Icons.person,
                  color: Color(0xff000000),
                ),
                hintText: "Last Name",
                hintStyle: TextStyle(
                  color: Colors.black45,
                ),
              ),
            ),
          )
        ],
      );
    }
    Widget _createChangeMail(){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 10.0),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
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
                  Icons.person,
                  color: Color(0xff000000),
                ),
                hintText: "Email",
                hintStyle: TextStyle(
                  color: Colors.black45,
                ),
              ),
            ),
          )
        ],
      );
    }

    Widget _createChangeLoc(){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 10.0),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
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
                  Icons.person,
                  color: Color(0xff000000),
                ),
                hintText: "Location",
                hintStyle: TextStyle(
                  color: Colors.black45,
                ),
              ),
            ),
          )
        ],
      );
    }
Widget _createChangePass(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const SizedBox(height: 10.0),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
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
              Icons.person,
              color: Color(0xff000000),
            ),
            hintText: "Change Password",
            hintStyle: TextStyle(
              color: Colors.black45,
            ),
          ),
        ),
      )
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
                  horizontal: 50.0,
                  vertical: 25.0
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _createTitle(),
                  const SizedBox(height: 5.0),
                  _createFirstName(),
                  _createLastName(),
                  _createChangeMail(),
                  _createChangeLoc(),
                  _createChangePass(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}