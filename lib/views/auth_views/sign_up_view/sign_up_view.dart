import 'package:flutter/material.dart';
import 'package:plant_a_tree/views/widgets/widgets.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final _emailTextEditingController = TextEditingController();
  final _passwordTextEditingController = TextEditingController();
  final _confirmPasswordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log In"),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    InputField(
                      label: "Email address",
                      hintText: "Enter your email address",
                      controller: _emailTextEditingController,
                    ),
                    const SizedBox(height: 40),
                    InputField(
                      label: "Password",
                      hintText: "Choose a password",
                      controller: _passwordTextEditingController,
                      obscureText: true,
                    ),
                    const SizedBox(height: 40),
                    InputField(
                      label: "Confirm Password",
                      hintText: "Confirm your password",
                      controller: _confirmPasswordTextEditingController,
                      obscureText: true,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            color: Theme.of(context).colorScheme.background,
            child: SafeArea(
              child: PrimaryButton(
                title: "Create account",
                onPress: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
