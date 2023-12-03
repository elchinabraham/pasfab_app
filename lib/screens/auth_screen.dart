import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pasfab_app/screens/login_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var year = DateTime.now().year;
    var version = '2.0.1';
    var passwordController = TextEditingController();
    var myKeyword = 'aba768hkkksa609';

    void login() {
      // var password = passwordController.text;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
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
                        'Enter the App Password',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 4, 75, 168),
                        ),
                      ),
                      const SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          Clipboard.setData(ClipboardData(text: myKeyword));
                          const snackBar = SnackBar(
                            content: Text('Keyword was copied'),
                            duration: Duration(seconds: 2),
                          );

                          ScaffoldMessenger.of(context).clearSnackBars();
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: Text(
                          myKeyword,
                          style: const TextStyle(fontSize: 17),
                        ),
                      ),
                      TextField(
                        controller: passwordController,
                        decoration: const InputDecoration(
                          label: Text('Enter your password'),
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
