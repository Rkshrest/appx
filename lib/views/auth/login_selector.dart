import 'package:appx/views/auth/data/login.dart';
import 'package:appx/views/auth/data/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

class LoginSelector extends StatelessWidget {
  const LoginSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000), // background color for screen
      body: Column(
        children: [
          SizedBox(
            // * * the logo on the top of the screen
            child: SvgPicture.asset("assets/icons/Logo.svg"),
            height: MediaQuery.of(context).size.height * .4,
          ),
          const SizedBox(
            // * * title
            width: double.infinity,
            child: Text(
              "Get Socialized in Profession way",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            // * *  subtitle
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Manage your profession.\nSeamlessly.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
          ),
          const SizedBox(
            // * * spacing b/w buttons and text
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        child: const SignupDataGetter(),
                        type: PageTransitionType.rightToLeftWithFade,
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    child: const Center(
                      child: Text(
                        "Sign Up with Email ID",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    decoration: const BoxDecoration(
                      color: Color(0xff5E5CE5),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset("assets/icons/google.svg"),
                      ),
                      const Text(
                        "Sign Up with Google",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                TextButton(
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        child: const LoginDataGetter(),
                        type: PageTransitionType.rightToLeftWithFade,
                      ),
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
