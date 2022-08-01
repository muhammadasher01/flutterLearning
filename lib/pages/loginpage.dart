import 'package:dummyflutterapps/utils/MyRoutes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginpage extends StatefulWidget {
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String myName = "";
  bool buttonCLicked = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                "Welcome $myName",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.lato().fontFamily),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "userName", hintText: "Enter User Name"),
                      onChanged: (value) {
                        myName = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Enter Password",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          buttonCLicked = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoutes);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: buttonCLicked ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: buttonCLicked ? Icon(Icons.done, color: Colors.white) : Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          shape: buttonCLicked
                              ? BoxShape.circle
                              : BoxShape.rectangle,
                          //borderRadius: BorderRadius.all(Radius.circular(6))
                        ),
                      ),
                    ),
                    // ElevatedButton(
                    //   child: Text("Login Here"),
                    //   onPressed: () {
                    //     print("Hello welcome to the world");
                    //     Navigator.pushNamed(context, MyRoutes.homeRoutes);
                    //   },
                    // )
                  ],
                ),
              )
            ],
          ),
        ));
  }

  void onClick() {}
}
