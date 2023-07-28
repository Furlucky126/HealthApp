import 'package:flutter/material.dart';
import 'package:healthapp/home.dart';
import 'package:healthapp/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool a = true;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/logo.png',
                        scale: 1,
                      ),
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    const Text(
                      'Log In',
                      style: TextStyle(fontSize: 30),
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    //textfield
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        labelText: "Username",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: const BorderSide(
                              color: Colors.blue), // Border color
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    TextFormField(
                      obscureText: a,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                a = !a;
                              });
                            },
                            child: const Icon(Icons.remove_red_eye)),
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: const BorderSide(
                              color: Colors.blue), // Border color
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 15,
                    ),

                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot Password?",
                      ),
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blue, // Background color of the Container
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                // Within the `FirstRoute` widget
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HealthApp()),
                                  );
                                },
                                child: const Text("Log In",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20))),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account?",
                            style: TextStyle(fontSize: 18)),
                        TextButton(
                            // Within the `FirstRoute` widget
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()),
                              );
                            },
                            child: const Text("Sign Up",
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 18))),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
