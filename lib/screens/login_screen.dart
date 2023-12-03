import 'package:flutter/material.dart';

import 'settings_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var year = DateTime.now().year;
    var version = '2.0.1';
    var usernameController = TextEditingController();
    var passwordController = TextEditingController();

    void login() {
      var userName = usernameController.text;
      var password = passwordController.text;

      if (userName.isEmpty) {
        const snackBar = SnackBar(
          content: Text('Username daxil edin'),
          duration: Duration(seconds: 3),
        );

        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        return;
      }

      if (password.isEmpty) {
        const snackBar = SnackBar(
          content: Text('Password daxil edin'),
          duration: Duration(seconds: 3),
        );

        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        return;
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SettingsScreen(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.settings,
                      color: Color.fromARGB(255, 11, 81, 138),
                      size: 28,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Card(
                elevation: 2,
                child: Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 0, 21, 49),
                        ),
                      ),
                      TextField(
                        controller: usernameController,
                        decoration: const InputDecoration(
                          label: Text('Username'),
                        ),
                      ),
                      const SizedBox(height: 5),
                      TextField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: const InputDecoration(
                          label: Text('Password'),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: login,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('LOGIN'),
                              SizedBox(width: 10),
                              Icon(Icons.login),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Image.network(
                'https://cloudlaunch1.s3.eu-west-2.amazonaws.com/wp-content/uploads/2023/11/09201600/FabPOS-horizontal-_-Colored-Center-logo.png',
              ),
              const SizedBox(height: 30),
              Text(
                'Version $version',
                style: const TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 10, 90, 155),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '$year',
                style: const TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 10, 90, 155),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
