import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:prostep1/screens/resources/routes_manger.dart';
import 'package:prostep1/text_widget.dart';
import 'package:prostep1/widget/loading_manager.dart';
import '../../auth_button.dart';
import '../../controllers/registeration_controller.dart';

class RegisterScreen extends StatefulWidget {
  static const routeName = '/RegisterScreen';
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  RegisterationController registerationController =
      Get.put(RegisterationController());
  int usertype = 4;
  int groupValue = 4;
  bool _isloading = false;
  bool toggleValue = false;

  final _passconfirmTextController = TextEditingController();
  final _addressTextController = TextEditingController();
  final _passFocusNode = FocusNode();
  final _emailFocusNode = FocusNode();
  final _addressFocusNode = FocusNode();
  TextEditingController userController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _obscureText = true;
  bool _obscurepasswordconfirmText = true;
  @override
  void dispose() {
    _passconfirmTextController.dispose();
    _addressTextController.dispose();
    _emailFocusNode.dispose();
    _passFocusNode.dispose();
    _addressFocusNode.dispose();
    super.dispose();
  }

  void _submitFormOnRegister() async {
    final isValid = _formKey.currentState!.validate();
    FocusScope.of(context).unfocus();
    if (isValid) {
      _formKey.currentState!.save();
      setState(() {
        _isloading = true;
      });
      await registerationController.registerWithEmail(userController.text,
          emailController.text, passwordController.text, usertype);
      setState(() {
        _isloading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return LoadingManager(
      isLoading: _isloading,
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              color: const Color.fromARGB(255, 229, 229, 229),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  const SizedBox(
                    height: 60.0,
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () => Navigator.canPop(context)
                        ? Navigator.pop(context)
                        : null,
                    child: const Icon(
                      IconlyLight.arrow_left_3,
                      size: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  TextWidget(
                    text: 'Register Account',
                    color: const Color.fromARGB(255, 29, 64, 91),
                    textSize: 25,
                    isTitle: true,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextWidget(
                    text: 'Do you want to be a student / teacher ?',
                    color: const Color.fromARGB(255, 42, 86, 121),
                    textSize: 25,
                    isTitle: false,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Radio(
                        value: 4,
                        groupValue: groupValue,
                        onChanged: (val) {
                          setState(() {
                            groupValue = 4;

                            usertype = 4;
                          });
                        },
                      ),
                      TextWidget(
                          text: 'Coach',
                          color: const Color.fromARGB(255, 29, 64, 91),
                          textSize: 14),
                      const SizedBox(
                        width: 75,
                      ),
                      Radio(
                          value: 5,
                          groupValue: groupValue,
                          onChanged: (val) {
                            setState(() {
                              usertype = 5;
                              groupValue = 5;
                            });
                          }),
                      TextWidget(
                          text: 'Student',
                          color: const Color.fromARGB(255, 29, 64, 91),
                          textSize: 14),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  groupValue == 4
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width / 1.3,
                          height: 50,
                          child: TextWidget(
                            text: 'Please add your certificate '
                                'in Profile settings when log in',
                            color: const Color.fromARGB(255, 29, 64, 91),
                            textSize: 18,
                          ),
                        )
                      : Container(),
                  const SizedBox(
                    height: 15,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          onEditingComplete: () => FocusScope.of(context)
                              .requestFocus(_emailFocusNode),
                          keyboardType: TextInputType.name,
                          controller: userController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "This Field is missing";
                            } else {
                              return null;
                            }
                          },
                          style: const TextStyle(
                              color: Color.fromARGB(255, 42, 86, 121)),
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              IconlyLight.profile,
                              color: Color.fromARGB(255, 42, 86, 121),
                            ),
                            hintText: 'User name',
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 42, 86, 121)),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(76, 42, 86, 121)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 3,
                                  color: Color.fromARGB(76, 42, 86, 121)),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          focusNode: _emailFocusNode,
                          textInputAction: TextInputAction.next,
                          onEditingComplete: () => FocusScope.of(context)
                              .requestFocus(_passFocusNode),
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          validator: (value) {
                            if (value!.isEmpty || !value.contains("@")) {
                              return "Please enter a valid Email adress";
                            } else {
                              return null;
                            }
                          },
                          style: const TextStyle(
                              color: Color.fromARGB(255, 42, 86, 121)),
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Color.fromARGB(255, 42, 86, 121),
                            ),
                            hintText: 'Email',
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 42, 86, 121)),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(76, 42, 86, 121)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 3,
                                  color: Color.fromARGB(76, 42, 86, 121)),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        //Password
                        TextFormField(
                          focusNode: _passFocusNode,
                          obscureText: _obscureText,
                          keyboardType: TextInputType.visiblePassword,
                          controller: passwordController,
                          validator: (value) {
                            if (value!.isEmpty || value.length < 7) {
                              return "Please enter a valid password";
                            } else {
                              return null;
                            }
                          },
                          style: const TextStyle(
                              color: Color.fromARGB(255, 42, 86, 121)),
                          onEditingComplete: () => FocusScope.of(context)
                              .requestFocus(_addressFocusNode),
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.lock_person_outlined,
                              color: Color.fromARGB(255, 42, 86, 121),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              child: Icon(
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: const Color.fromARGB(255, 42, 86, 121),
                              ),
                            ),
                            hintText: 'Password',
                            hintStyle: const TextStyle(
                                color: Color.fromARGB(255, 42, 86, 121)),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(76, 42, 86, 121)),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 3,
                                  color: Color.fromARGB(76, 42, 86, 121)),
                            ),
                            errorBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          //  focusNode: _passFocusNode,
                          obscureText: _obscurepasswordconfirmText,
                          keyboardType: TextInputType.visiblePassword,
                          controller: _passconfirmTextController,
                          validator: (value) {
                            if (value!.isEmpty || value.length < 7) {
                              return "Please enter a valid password";
                            } else {
                              return null;
                            }
                          },
                          style: const TextStyle(
                              color: Color.fromARGB(255, 42, 86, 121)),
                          onEditingComplete: () => FocusScope.of(context)
                              .requestFocus(_addressFocusNode),
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.lock_person_outlined,
                              color: Color.fromARGB(255, 42, 86, 121),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obscurepasswordconfirmText =
                                      !_obscurepasswordconfirmText;
                                });
                              },
                              child: Icon(
                                _obscurepasswordconfirmText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: const Color.fromARGB(255, 42, 86, 121),
                              ),
                            ),
                            hintText: 'Confirm Password',
                            hintStyle: const TextStyle(
                                color: Color.fromARGB(255, 42, 86, 121)),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(76, 42, 86, 121)),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 3,
                                  color: Color.fromARGB(76, 42, 86, 121)),
                            ),
                            errorBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                          ),
                        ),
                        /* Switch(
                          value: toggleValue,
                          onChanged: (value) {
                            if (toggleValue == false) {
                              setState(() {
                                toggleValue = value;

                                usertype = 4;
                              });
                            } else {
                              setState(() {
                                toggleValue = false;
                                usertype = 5;
                              });
                            }
                          },
                          activeColor: Colors.blue,
                          activeTrackColor: Colors.lightBlue,
                          inactiveTrackColor: Colors.grey[400],
                        ),*/
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 200.0,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                          text: 'Already have an Account?',
                          style: const TextStyle(
                              color: Color.fromARGB(255, 42, 86, 121),
                              fontSize: 18),
                          children: <TextSpan>[
                            TextSpan(
                                text: ' Login',
                                style: const TextStyle(
                                    color: Color.fromARGB(130, 35, 36, 38),
                                    fontSize: 18),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(
                                        context, Routes.loginRoute);
                                  }),
                          ]),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  AuthButton(
                    buttonText: 'Next',
                    fct: () {
                      _submitFormOnRegister();
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
