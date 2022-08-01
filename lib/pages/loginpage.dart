import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
            SizedBox(height: 20),
            Text(
              "Welcome",
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
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Password", hintText: "Enter Password"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    child: Text("Login Here"),
                    onPressed: () {
                      print("Hello welcome to the world");
                    },
                  )
                ],
              ),
            )
          ],
        ));
  }
}
