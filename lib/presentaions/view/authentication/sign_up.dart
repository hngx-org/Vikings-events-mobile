import 'package:event_app/core/constants/constants.dart';
import 'package:event_app/presentaions/controllers/auth_controller.dart';
import 'package:event_app/presentaions/model/google_signin.dart';
import 'package:event_app/presentaions/shared/dubm_widgets/custom_button.dart';
import 'package:event_app/presentaions/view/authentication/log_in.dart';
import 'package:event_app/presentaions/view/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  Future<void> signIn() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/iPhone 13 Pro Max - 1.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 120),
              const Text(
                "Welcome on board",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Create an account to plan events, share and meet with friends",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Create Account",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "To get you started,  Tap the button below to continue with google.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 60),
              Consumer(
                builder: (context, ref, child) {
                  return CustomButton(
                    buttonText: "Continue with Google",
                    onPressed: () {
                      ref
                          .read(authControllerProvider.notifier)
                          .authenticate()
                          .then((value) {
                        if (value) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const Dashboard(),
                            ),
                          );
                        }
                      });
                    },
                    isLoading: ref.watch(authControllerProvider).loadingState ==
                        LoadingState.loading,
                  );
                },
              ),
              const SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Have an account already?",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(240, 240, 240, 1),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) {
                          return const LogIn();
                        }),
                      );
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      // Add other styles as needed
                    ),
                    child: const Text(
                      "Log in",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(240, 240, 240, 1),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
