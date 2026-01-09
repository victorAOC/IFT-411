import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// -------------------- MyApp --------------------
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

// -------------------- LOGIN SCREEN --------------------
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Login Page')),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // LOGO
                Image.network(
                  'https://i.imgur.com/bCEmHk8.png',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Login',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                // EMAIL / ID FIELD
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email...',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 15),
                // PASSWORD FIELD
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password...',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                // FORGOT PASSWORD
                TextButton(
                  onPressed: () {
                    // forgot password logic
                  },
                  child: const Text('Forgot Password?'),
                ),
                const SizedBox(height: 10),
                // LOGIN BUTTON (with count just for demo)
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: Text('Login ($count)'),
                ),
                const SizedBox(height: 10),
                // CREATE ACCOUNT BUTTON
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterScreen(),
                      ),
                    );
                  },
                  child: const Text('Create Account'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// -------------------- REGISTER SCREEN --------------------
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Create Account')),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Column(
              children: [
                // LOGO
                Image.network(
                  'https://i.imgur.com/bCEmHk8.png',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(height: 20),
                // EMAIL FIELD
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email...',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 15),
                // PASSWORD FIELD
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password...',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 15),
                // PHONE NUMBER FIELD
                const TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    hintText: 'Enter your phone number...',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                // GOOGLE / APPLE SIGN-IN ROW
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.g_mobiledata),
                      label: const Text('Google'),
                    ),
                    const SizedBox(width: 15),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.apple),
                      label: const Text('Apple'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // REGISTER BUTTON → goes to main page
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MainPage()),
                    );
                  },
                  child: const Text('Register'),
                ),
                const SizedBox(height: 10),
                // BACK TO LOGIN
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Login?'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// -------------------- MAIN PAGE --------------------
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Main Page')),
        body: const Center(
          child: Text(
            'Welcome to the Main Page!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
