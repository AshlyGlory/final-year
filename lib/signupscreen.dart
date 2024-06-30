import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  double screenHeight = 0;
  double screenWidth = 0;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: SizedBox(
            height: screenHeight,
            width: screenHeight,
            child: Stack(
              children: [
                Center(
                  child: Transform.translate(
                    offset: Offset(screenWidth / 30, -30),
                    child: Transform.rotate(
                      angle: -0.4,
                      child: Container(
                        height: screenHeight / 3,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(55),
                    ),
                  ),
                )
        )
                ),
                Center(
                    child: Transform.translate(
                        offset: Offset(screenWidth / 30, 10),
                        child: Transform.rotate(
                          angle: -0.4,
                          child: Container(
                            height: screenHeight / 3,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(55),
                            ),
                          ),
                        )
                    )
                ),
                Center(
                    child: Transform.translate(
                        offset: Offset(screenWidth / 30, 10),
                        child: Transform.rotate(
                          angle: -0.4,
                          child: Container(
                            height: screenHeight / 3,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(55),
                            ),
                          ),
                        )
                    )
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                  height: screenHeight / 2,
                  width: screenWidth,
                    color: Colors.white,
                    padding: EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                    ],
                ),
              ],
            ),
        ),
    ),
    ],
    ),
        )
    );
  }
}

Widget textField(string hint,iconData icon, bool password){
  return     TextFormField(
    obscureText: password,
    decoration: InputDecoration(
      hintText: hint,
      hintStyle: const TextStyle(
        fontSize: 14,
      ),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.lightBlueAccent,
        ),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.lightBlueAccent,
        ),
      ),
      prefixIcon: Icon(
        icon,
        color: Colors.black26,
      ),
      contentPadding: const EdgeInsets.only(
        top: 14,
      ),
    ),
  ),
}