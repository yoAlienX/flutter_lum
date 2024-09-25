import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MaterialApp(
    home: UserAuthApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class UserAuthApp extends StatefulWidget {
  const UserAuthApp({super.key});

  @override
  _UserAuthAppState createState() => _UserAuthAppState();
}

class _UserAuthAppState extends State<UserAuthApp> {
  Map<String, String> userMap = {};
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool showPassword = false; // Password visibility toggle

  @override
  void initState() {
    super.initState();
    loadUserMap(); // Load user data from SharedPreferences when the app starts
  }

  // Login function with validation
  void loginUser(String username, String password) {
    if (username.isEmpty || password.isEmpty) {
      showDialogMessage('Please enter both username and password');
      return;
    }

    if (userMap.containsKey(username)) {
      if (userMap[username] == password) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const SuccessPage()), // Navigate to success page
        );
      } else {
        showDialogMessage('Incorrect Password!');
      }
    } else {
      showDialogMessage('Username not found!');
    }
  }

  // Create Account function with validation
  void createAccount(String username, String password) {
    if (username.isEmpty || password.isEmpty) {
      showDialogMessage('Please enter both username and password');
      return;
    }

    if (!userMap.containsKey(username)) {
      userMap[username] = password;
      saveUserMap(); // Save the updated map to SharedPreferences
      showDialogMessage('Account Created Successfully!');
    } else {
      showDialogMessage('Username already exists!');
    }
  }

  // Show dialog message
  void showDialogMessage(String message) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(message),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('OK'))
            ],
          );
        });
  }

  // Saving the map data to SharedPreferences
  void saveUserMap() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userMap.forEach((key, value) {
      prefs.setString(key, value); // Store each key-value pair
    });
  }

  // Loading the map data from SharedPreferences
  void loadUserMap() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.getKeys().forEach((key) {
        userMap[key] = prefs.getString(key)!;
      });
    });
  }

  // Forgot Password functionality
  void retrievePassword(String username) {
    if (username.isEmpty) {
      showDialogMessage('Please enter your username to retrieve your password');
      return;
    }

    if (userMap.containsKey(username)) {
      String retrievedPassword = userMap[username]!;
      showDialogMessage('Your password is: $retrievedPassword');
    } else {
      showDialogMessage('Username not found!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Authentication'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(
                    showPassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword; // Toggle password visibility
                    });
                  },
                ),
              ),
              obscureText: !showPassword, // Obscure password when not visible
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    createAccount(
                        usernameController.text, passwordController.text);
                  },
                  child: const Text('Create Account'),
                ),
                ElevatedButton(
                  onPressed: () {
                    loginUser(usernameController.text, passwordController.text);
                  },
                  child: const Text('Login'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                retrievePassword(usernameController.text); // Call the retrieve password function
              },
              child: const Text('Forgot Password?'),
            ),
          ],
        ),
      ),
    );
  }
}

// New page to navigate to after a successful login
class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: const Center(
        child: Text(
          'Login Successful!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
