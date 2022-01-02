import 'package:flutter/material.dart';
import 'package:plant_a_tree/views/widgets/widgets.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  _SignInViewState createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final _emailTextEditingController = TextEditingController();
  final _passwordTextEditingController = TextEditingController();

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
                      hintText: "Enter your password",
                      controller: _passwordTextEditingController,
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
                title: "Log In",
                onPress: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
