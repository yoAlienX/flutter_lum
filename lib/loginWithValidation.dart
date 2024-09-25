import 'package:firstproject/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPass = true;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white54,
        child: Form(
          key: formKey,
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
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    hintText: "Username",
                    labelText: "Username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  validator: (username){
                    if(username!.isEmpty || !username.contains('@') || !username.contains('.')) {
                      return "Enter a valid email";
                    }
                    else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 70, right: 70),
                child: TextFormField(
                  obscureText: showPass,
                  obscuringCharacter: "*", // This is being replaced as the password which is typed in the password field
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.password),
                    suffixIcon: IconButton(onPressed: () {
                      setState(() {
                        showPass = !showPass;
                      });
                    },
                      icon: Icon(
                        showPass == true ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                    hintText: "Password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  validator: (password) {
                    if(password!.isEmpty || password.length < 6) {
                      return "Invalid password";
                    }
                    else {
                      return null;
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white70,
                    foregroundColor: Colors.black87),
                onPressed: () {
                  var valid = formKey.currentState!.validate();
                  if(valid) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                  }
                },
                child: const Text("Login"),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: TextButton(
                  onPressed: () {
                    // Create account action
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white70,
                      foregroundColor: Colors.black87),
                  child: const Text("Create an account"),
                ),
              ),
            ], // Column children
          ),
        ),
      ),
    );
  }
}
