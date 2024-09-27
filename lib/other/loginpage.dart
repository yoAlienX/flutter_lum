// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: loginpage.loginPage(),
  ));
}

class loginpage extends StatelessWidget {
  const loginpage.loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(
      //   child: Text("Trust no one."),
      body: Container(
        color: Colors.white54,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 80),
              child: Text(
                "Login Page",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 70, right: 70),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  hintText: "Username",
                  labelText: "Username",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 70, right: 70),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.password),
                  suffixIcon: const Icon(Icons.visibility_off),
                  hintText: "Password",
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white70,
                  foregroundColor: Colors.black87),
              onPressed: () {},
              child: const Text("Login"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: Colors.white70,
                  foregroundColor: Colors.black87),
              child: const Text("Create an account"),
            ),
          ], // Column children
        ),
      ),
    );
  }
}
