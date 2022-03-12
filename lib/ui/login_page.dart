import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;

  Widget _createUserNameBox(){
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
              color: Color(0xff522971),
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 15.0),
              prefixIcon: Icon(
                Icons.person,
                color: Color(0xff9f5074),
              ),
              hintText: "Username",
              hintStyle: TextStyle(
                color: Colors.black45,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _createPasswordBox(){
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
              color: Color(0xff522971),

            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 15.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xffd56c76),
              ),
              hintText: "Password",
              hintStyle: TextStyle(
                color: Colors.black45,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _createFPassBtn(){
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
          onPressed: () => debugPrint('Forgot Password Button Pressed'),
          child: const Text("Forgot Password?",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )
      ),
    );
  }

  Widget _createRMeCheckBox(){
    return Row(
      children: [
        Theme(
            data: ThemeData(
                unselectedWidgetColor: Colors.white),
            child: Checkbox(
                value: _rememberMe,
                checkColor: const Color(0xffe07e77),
                activeColor: Colors.white,
                onChanged: (value) {
                  setState(() {
                    _rememberMe = value!;
                  });
                }
            )
        ),
        const Text("Remember Me",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }

  Widget _createLoginBtn(){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 2,
            primary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding: const EdgeInsets.all(12.0)
        ),
        child: const Text("LOGIN",
          style: TextStyle(
            color: Color(0xffe88b78),
            fontSize: 18,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () => debugPrint("Login Button Pressed"),
      ),
    );
  }

  Widget _createOrSignInWithTxt(){
    return Column(
      children: const <Widget>[
        Text(
            "- OR -",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            )
        ),
        SizedBox(height: 20.0),
        Text(
          "Log in with",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }

  Widget _createAltSignInBtn(){
    return Padding(padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
                onTap: () => debugPrint("Login with Google Button Tapped"),
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
                        image: AssetImage('assets/google.png'),
                      )
                  ),
                )
            ),
            GestureDetector(
                onTap: () => debugPrint("Login with Facebook Button Tapped"),
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
                        image: AssetImage('assets/facebook.jpg'),
                      )
                  ),
                )
            ),
            GestureDetector(
                onTap: () => debugPrint("Login with Twitter Button Tapped"),
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
                        image: AssetImage('assets/twitter.png'),
                      )
                  ),
                )
            ),
          ],
        )
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
                    Color(0xFF3a1c71),
                    Color(0xFFd76d77),
                    Color(0xFFffaf7b),
                  ],
                )
            ),
          ),
          SizedBox(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 100.0
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                      "Welcome, Yaps",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                  const SizedBox(height: 30.0),
                  _createUserNameBox(),
                  const SizedBox(height: 15.0),
                  _createPasswordBox(),
                  _createFPassBtn(),
                  _createRMeCheckBox(),
                  _createLoginBtn(),
                  const SizedBox(height: 10.0),
                  _createOrSignInWithTxt(),
                  const SizedBox(height: 10.0),
                  _createAltSignInBtn(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}