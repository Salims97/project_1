import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_1/controls/login-api.dart';
import 'package:project_1/models/color.dart';
import 'package:project_1/widgets/curved-left-shadow.dart';
import 'package:project_1/widgets/curved-left.dart';
import 'package:project_1/widgets/curved-right-shadow.dart';
import 'package:project_1/widgets/curved-right.dart';
import 'package:project_1/widgets/textfield.dart';

final passwordState = StateProvider<bool>((ref) => true);

class LoginPage extends ConsumerWidget {
  LoginPage({Key? key}) : super(key: key);

  final TextEditingController name = TextEditingController();
  final TextEditingController password = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var visible = ref.watch(passwordState);
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      appBar: null,
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned(top: 0, left: 0, child: CurvedLeftShadow()),
                Positioned(top: 0, left: 0, child: CurvedLeft()),
                Positioned(bottom: 0, left: 0, child: CurvedRightShadow()),
                Positioned(bottom: 0, left: 0, child: CurvedRight()),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                    const Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: AppColors.darkBlue9,
                          fontFamily: 'Adobe',
                          fontSize: 35,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: MediaQuery.of(context).size.width * 0.1),
                            child: Card(
                              color: AppColors.darkBlue9,
                              elevation: 16,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                              ),
                              child: Stack(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Texts(
                                    type: TextInputType.name,
                                    hintText: 'Username',
                                    icon: Icons.person,
                                    x: name,
                                    msg: 'email',
                                  ),
                                  const Center(
                                    child: Divider(
                                      color: Colors.grey,
                                      thickness: 1,
                                    ),
                                  ),
                                  // ignore: prefer_const_constructors

                                  Padding(
                                    padding: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.1),
                                    child: TextFormField(
                                      cursorWidth: 1,
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Password',
                                        prefixIcon: const Icon(
                                          Icons.lock,
                                          color: AppColors.darkBlue2,
                                        ),
                                        suffixIcon: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 40),
                                          child: IconButton(
                                              onPressed: () {
                                                var visible = ref.watch(
                                                    passwordState.notifier);
                                                visible.state = !visible.state;
                                                print(visible.state);
                                              },
                                              icon: Icon(
                                                visible
                                                    ? Icons.visibility
                                                    : Icons.visibility_off,
                                                color: visible
                                                    ? AppColors.darkBlue2
                                                    : AppColors.darkBlue2,
                                              )),
                                        ),
                                      ),
                                      controller: password,
                                      obscureText: !visible,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "please enter Password";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: MediaQuery.of(context).size.width * 0.82,
                          top: MediaQuery.of(context).size.height * 0.07,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: AppColors.darkBlue3,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () async {
                                if (formKey.currentState!.validate()) {
                                  if (await LoginApi.loginAuth(
                                      name.text, password.text)) {
                                    Navigator.of(context)
                                        .pushReplacementNamed('/bottom_bar');
                                  }
                                }
                              },
                              icon: const Icon(
                                Icons.arrow_right_alt,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.7,
                      ),
                      child: TextButton(
                        onPressed: () {
                          print('blaaa');
                        },
                        child: const Text(
                          'Forgot ?',
                          style: TextStyle(color: AppColors.darkBlue9),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Card(
                        color: AppColors.darkBlue9,
                        elevation: 16,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/register');
                          },
                          child: const Text(
                            'Register',
                            style: TextStyle(
                                fontSize: 18, color: AppColors.darkBlue3),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
