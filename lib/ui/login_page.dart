import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teknikalph_app/ui/home_page.dart';
import 'package:teknikalph_app/ui/signup_page.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}) : super(key: key);

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
              height: 150.0,
              width: 150.0,
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
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
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
                color: Color(0xFFF5795E),
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
                color: Colors.black26,
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
              contentPadding: EdgeInsets.only(top: 15.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xFFF3775D),
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
                unselectedWidgetColor: Colors.white),
            child: Checkbox(
                value: _rememberMe,
                checkColor: const Color(0xffef735d),
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
            fontWeight: FontWeight.w400,
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(40.0,0,0,0),
          child: TextButton(
              onPressed: () => debugPrint('Forgot Password Button Pressed'),
              child: const Text("Forgot Password?",
                style: TextStyle(
                  color: Colors.white,
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
            primary: const Color(0xFF014466),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding: const EdgeInsets.fromLTRB(10, 12, 10, 12)
        ),
        child: const Text("Sign In",
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
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        },
      ),
    );
  }

  Widget _createOrTxt(){
    return Column(
      children: const <Widget>[
        Text(
          "or sign in with",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }

  Widget _createAltSignInBtn(){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      width: double.infinity,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            elevation: 2,
            primary: const Color(0xFF014466),
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding: const EdgeInsets.all(10.0)
        ),
        label: const Text("Google",
          style: TextStyle(
            fontSize: 18,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        icon: const FaIcon(FontAwesomeIcons.google, color: Color(0xFFF65314),),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        }
      ),

    );
  }

  Widget _createSignUpRedirectBtn(){
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SignUpPage()),
        );
      },
      child: RichText(
          text: const TextSpan(
              children: [
                TextSpan(
                  text: "Don't have an Account? ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: "Sign Up",
                  style: TextStyle(
                    color: Colors.white,
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
              padding: const EdgeInsets.symmetric(
                  horizontal: 50.0,
                  vertical: 25.0
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 15.0),
                  _createLogo(),
                  const SizedBox(height: 10.0),
                  Container(
                      alignment: Alignment.centerLeft,
                      child:
                      const Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      )
                  ),
                  _createUserNameBox(),
                  const SizedBox(height: 5.0),
                  _createPasswordBox(),
                  _createRMeFPass(),
                  _createLoginBtn(),
                  const SizedBox(height: 60.0),
                  _createOrTxt(),
                  // const SizedBox(height: 25.0),
                  _createAltSignInBtn(),
                  const SizedBox(height: 10.0),
                  _createSignUpRedirectBtn(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}