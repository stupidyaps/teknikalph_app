import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teknikalph_app/ui/home_page.dart';
import 'package:teknikalph_app/ui/login_page.dart';

class SignUpPage extends StatefulWidget{
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<SignUpPage> {
  bool _agreeTerms = false;

  Widget _createUserFLNameBox(){
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
                  color: Color(0xff000000),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(15.0),
                  hintText: "First Name",
                  hintStyle: TextStyle(
                    color: Colors.black45,
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
                  hintText: "Last Name",
                  hintStyle: TextStyle(
                    color: Colors.black45,
                  ),
                ),
              ),
            ),
        )
      ],
    );
  }

  Widget _createEmailBox(){
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
              hintText: "Email Address",
              hintStyle: TextStyle(
                color: Colors.black45,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _createContactBox(){
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
              hintText: "Contact Number",
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
              color: Color(0xff000000),
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(15.0),
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

  Widget _createConfPasswordBox(){
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
              hintText: "Confirm Password",
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

  Widget _createAgreeTermCondCBox(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Theme(
            data: ThemeData(
                unselectedWidgetColor: Colors.white),
            child: Checkbox(
                value: _agreeTerms,
                checkColor: const Color(0xffea6d5b),
                activeColor: Colors.white,
                onChanged: (value) {
                  setState(() {
                    _agreeTerms = value!;
                  });
                }
            )
        ),
        const Text("I Agree to our ",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
        const Text("Terms and Conditions",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );
  }

  Widget _createSignUpBtn(){
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
            padding: const EdgeInsets.all(12.0)
        ),
        child: const Text("Sign Up",
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
          "or",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }

  Widget _createAltSignUpBtn(){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      width: double.infinity,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            elevation: 2,
            primary: const Color(0xFF014466),
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding: const EdgeInsets.all(12.0)
        ),
        label: const Text("Sign Up with Google",
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
        },
      ),

    );
  }

  Widget _createLoginRedirectBtn(){
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
      },
      child: RichText(
          text: const TextSpan(
              children: [
                TextSpan(
                  text: "Already have an Account? ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: "Sign In",
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
                  begin: Alignment.topCenter,
                  end:  Alignment.bottomCenter,
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
                  const SizedBox(height: 20.0),
                  Container(
                      alignment: Alignment.centerLeft,
                      child:
                      const Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                  ),
                  const SizedBox(height: 15.0),
                  _createUserFLNameBox(),
                  const SizedBox(height: 5.0),
                  _createEmailBox(),
                  const SizedBox(height: 5.0),
                  _createContactBox(),
                  const SizedBox(height: 5.0),
                  _createPasswordBox(),
                  const SizedBox(height: 5.0),
                  _createConfPasswordBox(),
                  _createAgreeTermCondCBox(),
                  _createSignUpBtn(),
                  const SizedBox(height: 5.0),
                  _createOrTxt(),
                  _createAltSignUpBtn(),
                  _createLoginRedirectBtn(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}