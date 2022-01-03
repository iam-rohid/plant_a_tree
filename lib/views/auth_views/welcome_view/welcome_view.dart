import 'package:flutter/material.dart';
import 'package:plant_a_tree/views/auth_views/sign_in_view/sign_in_view.dart';
import 'package:plant_a_tree/views/auth_views/sign_up_view/sign_up_view.dart';
import 'package:plant_a_tree/views/auth_views/widgets/widgets.dart';
import 'package:plant_a_tree/views/widgets/widgets.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  _WelcomeViewState createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              Image.asset(
                "assets/images/logo.png",
                width: 120,
                height: 120,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 16),
              Text(
                "Plant A Tree".toUpperCase(),
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              SocialButton(
                title: "Continue with Google",
                icon: "assets/icons/google.png",
                onPress: () {},
              ),
              const SizedBox(height: 20),
              SocialButton(
                title: "Continue with Facebook",
                icon: "assets/icons/facebook.png",
                onPress: () {},
              ),
              const SizedBox(height: 20),
              Text(
                "OR",
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 20),
              PrimaryButton(
                title: "Create Account",
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpView(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInView(),
                        ),
                      );
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
