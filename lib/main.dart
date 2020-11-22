import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/room4.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        foregroundDecoration: BoxDecoration(color: Colors.black54),
        child: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: kToolbarHeight,
                  ),
                  Text(
                    "Welcome",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Welcome to this awesome login app. You are awesome",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        elevation: 0,
                        color: Colors.red,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      RaisedButton(
                        elevation: 0,
                        color: Colors.white,
                        textColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "Signup",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.close, color: Colors.white, size: 30),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.all(15),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Enter email",
                              border: OutlineInputBorder()),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Enter password",
                              border: OutlineInputBorder()),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        RaisedButton(
                          color: Colors.red,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                        alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.only(bottom: 35),
                    child: OutlineButton.icon(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      borderSide: BorderSide(color: Colors.red, width: 2),
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.google,
                        color: Colors.white,
                        size: 35,
                      ),
                      label: Text(
                        "Continue with Google",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
