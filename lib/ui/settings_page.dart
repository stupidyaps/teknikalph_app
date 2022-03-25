import 'package:flutter/material.dart';
import 'package:teknikalph_app/ui/login_page.dart';

import 'home_page.dart';

class SettingsPage extends StatefulWidget{
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isNotifyToggled = false;

  Widget _createTitle(){
    return Container(
      alignment: Alignment.centerLeft,
        child: const Text(
          "Settings",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        )
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
              contentPadding: EdgeInsets.all(15.0),
              hintText: "jdoe@gmail.com",
              hintStyle: TextStyle(
                color: Colors.black45,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _createChangeNameBoxes(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 10.0),
        Expanded(
          child: Container(
            margin: const EdgeInsets.fromLTRB(0,0,15,0),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6.0,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            height: 55.0,
            width: 100,
            child: const TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(15.0),
                hintText: "John",
                hintStyle: TextStyle(
                  color: Colors.black54,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6.0,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            height: 55.0,
            width: 100,
            child: const TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(15.0),
                hintText: "Doe",
                hintStyle: TextStyle(
                  color: Colors.black54,
                ),
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
              contentPadding: EdgeInsets.all(15.0),
              hintText: "206 Isaac St., Franklin, Louisiana",
              hintStyle: TextStyle(
                color: Colors.black45,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _createChangeContact(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
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
              contentPadding: EdgeInsets.all(15.0),
              hintText: "(540) 641-8888",
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
            obscureText: true,
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Color(0xff000000),
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(15.0),
              hintText: "********",
              hintStyle: TextStyle(
                color: Colors.black45,
              ),
              suffixIcon: InkWell(
                  child: Icon(Icons.visibility)),
            ),
          ),
        )
      ],
    );
  }

  Widget _createChangeConfPass(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
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
            obscureText: true,
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Color(0xff000000),
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(15.0),
              hintText: "********",
              hintStyle: TextStyle(
                color: Colors.black45,
              ),
              suffixIcon: InkWell(
                  child: Icon(Icons.visibility)),
            ),
          ),
        )
      ],
    );
  }

  Widget _createSaveButton(){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      width: 125,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 2,
            primary: const Color(0xFF4CAF50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding: const EdgeInsets.all(12.0)
        ),
        child: const Text("Save",
          style: TextStyle(
            color: Color(0xffffffff),
            fontSize: 18,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () async {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Information Updated", textAlign: TextAlign.center,style: TextStyle(color: Color(0xfffe8161)),),
                content: const SizedBox(
                  child: Text("You have successfully changed your user information.",
                    textAlign: TextAlign.center,
                  ),
                ),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      ),
                      child: const Text("Continue", style: TextStyle(color: Color(0xFF014466), fontSize: 18),))
                ],
              )
          );
          debugPrint("Save Button Tapped");
        },
      ),
    );
  }

  Widget _createLogoutBtn(){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      width: 200,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 2,
            primary: const Color(0xFF014466),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding: const EdgeInsets.all(12.0)
        ),
        child: const Text("Sign Out",
          style: TextStyle(
            color: Color(0xffffffff),
            fontSize: 18,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        },
      ),
    );
  }

  _createUploadProfile(){
    return Row(
      children: [
        GestureDetector(
            onTap: () => debugPrint("Change Profile Picture Tapped"),
            child: Container(
              height: 100.0,
              width: 100.0,
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
        const SizedBox(width: 10,),
        const Flexible(
          child: Text("Upload a file from your device. Image should be at least 184px x 184px.",
            overflow: TextOverflow.clip,style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),
          ),
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
                  begin: Alignment.topLeft,
                  end:  Alignment.centerRight,
                  colors: [
                    Color(0xfffe8161),
                    Color(0xfff4775e),
                    Color(0xffda5a59)
                  ],
                )
            ),
          ),
          SizedBox(
            height: double.infinity,
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(30,65,30,10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _createTitle(),
                  const SizedBox(height: 15,),
                  _createUploadProfile(),
                  const SizedBox(height: 20,),
                  _createChangeNameBoxes(),
                  _createChangeContact(),
                  _createChangeLoc(),
                  _createChangeMail(),
                  _createChangePass(),
                  _createChangeConfPass(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text("Message Notifications",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 1.2
                        ),
                      ),
                      Switch(
                        value: _isNotifyToggled,
                        onChanged: (value){
                          setState(() {
                            _isNotifyToggled = value;
                            debugPrint("Notification Toggle Switched");
                          });
                        },
                        activeColor: Colors.white,
                        activeTrackColor: const Color(0xFF014466),
                      )
                    ],
                  ),
                  _createSaveButton(),
                  const SizedBox(height: 5,),
                  const Divider(color: Colors.white,thickness: 1.5,),
                  const SizedBox(height: 5,),
                  _createLogoutBtn()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}