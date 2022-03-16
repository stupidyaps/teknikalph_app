import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;

  Widget _createLogo(){
    return Container(
        padding: const EdgeInsets.fromLTRB(0,10,0,0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 175.0,
              width: 175.0,
              decoration: const BoxDecoration(
                // shape: BoxShape.circle,
                // color: Colors.white,
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.black26,
                //     offset: Offset(0,2),
                //     blurRadius: 6.0,
                //   )
                // ],
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                  )
              ),
            )
          ],
        )
    );
  }

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
              color: Color(0xff522971),
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 15.0),
              prefixIcon: Icon(
                Icons.person,
                color: Color(0xff000000),
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
                color: Color(0xff000000),
              ),
              hintText: "Password",
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

  Widget _createRMeFPass(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Theme(
            data: ThemeData(
                unselectedWidgetColor: Colors.black),
            child: Checkbox(
                value: _rememberMe,
                checkColor: const Color(0xffffffff),
                activeColor: Colors.black,
                onChanged: (value) {
                  setState(() {
                    _rememberMe = value!;
                  });
                }
            )
        ),
        const Text("Remember Me",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(40.0,0,0,0),
          child: TextButton(
              onPressed: () => debugPrint('Forgot Password Button Pressed'),
              child: const Text("Forgot Password?",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              )
          ),
        ),
      ],
    );
  }

  Widget _createLoginBtn(){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 2,
            primary: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding: const EdgeInsets.all(12.0)
        ),
        child: const Text("Sign In",
          style: TextStyle(
            color: Color(0xffffffff),
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
          "or",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }

  Widget _createAltSignInBtn(){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      width: double.infinity,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            elevation: 2,
            primary: Colors.black,
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding: const EdgeInsets.all(12.0)
        ),
        label: const Text("Sign In with Google",
          style: TextStyle(
            fontSize: 18,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        icon: const FaIcon(FontAwesomeIcons.google, color: Colors.white,),
        onPressed: () => debugPrint("Google Sign In Button Tapped"),
      ),

    );
  }

  Widget _createSignUpBtn(){
    return GestureDetector(
      onTap: () => debugPrint("Sign Up button tapped"),
      child: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: "Don't have an Account? ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: "Sign Up",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]
        )
      ),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _createLogo(),
                  const SizedBox(height: 10.0),
                  Container(
                    alignment: Alignment.centerLeft,
                    child:
                    const Text(
                      "Log In",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ),
                  _createUserNameBox(),
                  const SizedBox(height: 15.0),
                  _createPasswordBox(),
                  _createRMeFPass(),
                  _createLoginBtn(),
                  const SizedBox(height: 15.0),
                  _createOrSignInWithTxt(),
                  const SizedBox(height: 5.0),
                  _createAltSignInBtn(),
                  const SizedBox(height: 13.0),
                  _createSignUpBtn(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}