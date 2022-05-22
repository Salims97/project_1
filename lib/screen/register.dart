import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_1/controls/login-api.dart';
import 'package:project_1/models/color.dart';
import 'package:project_1/widgets/curved-left-shadow.dart';
import 'package:project_1/widgets/curved-left.dart';
import 'package:project_1/widgets/curved-right-shadow.dart';
import 'package:project_1/widgets/curved-right.dart';
import 'package:project_1/widgets/textfield.dart';

final passwordState = StateProvider<bool>((ref) => true);
final passwordState1 = StateProvider<bool>((ref) => true);

class RegisterPage extends ConsumerWidget {
  RegisterPage({Key? key}) : super(key: key);

  final TextEditingController gmail = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  final TextEditingController userName = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var visible = ref.watch(passwordState);
    var visible1 = ref.watch(passwordState1);
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
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
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.72,
                  top: MediaQuery.of(context).size.height * 0.15,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Card(
                      color: AppColors.darkBlue9,
                      elevation: 16,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 18, color: AppColors.darkBlue3),
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                    const Center(
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: AppColors.darkBlue9,
                          fontFamily: 'Adobe',
                          fontSize: 35,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.55,
                      child: Stack(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.36,
                            width: double.infinity,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  right:
                                      MediaQuery.of(context).size.width * 0.11),
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
                                  children: [
                                    Texts(
                                      type: TextInputType.name,
                                      hintText: 'Username',
                                      icon: Icons.person,
                                      x: userName,
                                      msg: 'name',
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.08,
                                      ),
                                      child: const Divider(
                                        color: Colors.grey,
                                        thickness: 1,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.08,
                                      ),
                                      child: Texts(
                                        type: TextInputType.emailAddress,
                                        hintText: 'Gmail',
                                        icon: Icons.g_mobiledata,
                                        x: gmail,
                                        msg: 'gmail',
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.16,
                                      ),
                                      child: const Divider(
                                        color: Colors.grey,
                                        thickness: 1,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.16),
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
                                            color: Color.fromARGB(
                                                255, 39, 31, 106),
                                          ),
                                          suffixIcon: Padding(
                                                 padding: const EdgeInsets.only(
                                                  right: 40),
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
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.24,
                                      ),
                                      child: const Divider(
                                        color: Colors.grey,
                                        thickness: 1,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.24,
                                      ),
                                      child: TextFormField(
                                        cursorWidth: 1,
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        cursorColor: Colors.black,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Confirm Password',
                                          prefixIcon: const Icon(
                                            Icons.lock,
                                            color: Color.fromARGB(
                                                255, 39, 31, 106),
                                          ),
                                          suffixIcon: Padding(
                                         padding: const EdgeInsets.only(
                                                right: 40),
                                            child: IconButton(
                                              
                                              onPressed: () {
                                                var visible1 = ref.watch(
                                                    passwordState1.notifier);
                                                visible1.state = !visible1.state;
                                                print(visible1.state);
                                              },
                                              icon: Icon(
                                                visible1
                                                    ? Icons.visibility
                                                    : Icons.visibility_off,
                                                color: visible1
                                                    ? AppColors.darkBlue2
                                                    : AppColors.darkBlue2,
                                              ),
                                            ),
                                          ),
                                        ),
                                        controller: confirmPassword,
                                        obscureText: !visible1,
                                        validator: (value) {
                                          if (value == null ||
                                              value.isEmpty ||
                                              password.text !=
                                                  confirmPassword.text) {
                                            return "please enter right Password";
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
                            left: MediaQuery.of(context).size.width * 0.85,
                            top: MediaQuery.of(context).size.height * 0.145,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: AppColors.darkBlue3,
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                onPressed: () async {
                                  if (formKey.currentState!.validate()) {
                                    if (await RegisterApi.registerAuth(
                                        userName.text,
                                        gmail.text,
                                        password.text,
                                        phoneNumber.text)) {
                                      Navigator.of(context)
                                          .pushReplacementNamed('/home');
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
