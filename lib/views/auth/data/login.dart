import 'package:appx/views/auth/data/signup.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class LoginDataGetter extends StatelessWidget {
  const LoginDataGetter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.close,
          ),
          onPressed: () {
            // Get.back();
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.info_outline,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              width: double.infinity,
              child: Text(
                "Welcome back!",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  "Sign in to your account",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email",
                    fillColor: Colors.grey.withOpacity(.4),
                    focusColor: Colors.grey,
                    filled: true,
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hintText: "Password",
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                    fillColor: Colors.grey.withOpacity(.4),
                    focusColor: Colors.grey,
                    filled: true,
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot password?",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 50,
              child: const Center(
                child: Text(
                  "Continue",
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        PageTransition(
                          child: const SignupDataGetter(),
                          type: PageTransitionType.leftToRightWithFade,
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
