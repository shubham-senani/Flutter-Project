import "package:flutter/material.dart";
import "package:hell/utils/routes.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      // ignore: use_build_context_synchronously
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Image.asset("assets/images/login.png", fit: BoxFit.cover),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Welcome $name",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 20),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                  labelText: "username",
                                  hintText: "enter username"),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "username is required";
                                }
                                return null;
                              },
                              onChanged: (value) {
                                name = value;
                                setState(() {});
                              },
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                  labelText: "password",
                                  hintText: "enter password"),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter the password";
                                } else if (value.length < 6) {
                                  return "password character should cantain atleat 6 letter!";
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 20,
                            ),

                            InkWell(
                                onTap: () => moveToHome(context),
                                child: AnimatedContainer(
                                    duration: const Duration(seconds: 1),
                                    width: changeButton ? 40 : 150,
                                    height: 40,
                                    // color: const Color.fromARGB(255, 204, 232, 255),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 65, 65, 132),
                                      borderRadius: BorderRadius.circular(
                                          changeButton ? 50 : 8),
                                    ),
                                    child: changeButton
                                        ? const Icon(
                                            Icons.done,
                                            color: Colors.white,
                                          )
                                        : const Text("Login",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ))))

                            // ElevatedButton(
                            //     onPressed: () {
                            //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                            //     },
                            //     style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                            //     child: const Text("Login"))
                          ],
                        ))
                  ],
                ))));
  }
}
