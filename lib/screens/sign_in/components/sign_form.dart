import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_surfix_icon.dart';
import 'package:shop_app/components/form_error.dart';
import 'package:shop_app/helper/keyboard.dart';
import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app/screens/login_success/login_success_screen.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/widgets/error_dialog.dart';
import 'package:shop_app/widgets/loading_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shop_app/global/global.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool remember = false;
  final List<String> errors = [];

  void addError({required String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({required String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value!;
                  });
                },
              ),
              Text("Remember me"),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, ForgotPasswordScreen.routeName),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // if all are valid then go to success screen
                KeyboardUtil.hideKeyboard(context);
                // formValidation();
                Navigator.pushNamed(context, HomeScreen.routeName);
                // Navigator.of(context).pushReplacement(
                //   MaterialPageRoute(
                //     builder: (context) => LoginSuccessScreen(),
                //   ),
                // );
              }
            },
          ),
        ],
      ),
    );
  }

  formValidation() {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      //login
      loginNow();
    } else {
      showDialog(
        context: context,
        builder: (c) {
          return const ErrorDialog(
            message: "Please enter email/password.",
          );
        },
      );
    }
  }

  loginNow() async {
    showDialog(
      context: context,
      builder: (c) {
        return const LoadingDialog(
          message: "Checking Credentials...",
        );
      },
    );

    User? currentUser;
    await firebaseAuth
        .signInWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    )
        .then(
      (auth) {
        currentUser = auth.user!;
      },
    ).catchError((error) {
      Navigator.pop(context);
      showDialog(
        context: context,
        builder: (c) {
          return ErrorDialog(
            message: error.message.toString(),
          );
        },
      );
    });
    print("==========debug==========");
    if (currentUser != null) {
      readDataAndSetDataLocally(currentUser!);
    }
  }

  //read data from firestore and save it locally
  Future readDataAndSetDataLocally(User currentUser) async {
    await FirebaseFirestore.instance
        .collection("users")
        .doc(currentUser.uid)
        .get()
        .then(
      (snapshot) async {
        //check if the user is user
        print("+++++++++++++++asdasdasdsad");
        if (snapshot.exists) {
          if (snapshot.data()!["status"] == "approved") {
            await sharedPreferences!.setString("uid", currentUser.uid);
            await sharedPreferences!
                .setString("email", snapshot.data()!["email"]);
            await sharedPreferences!
                .setString("password", snapshot.data()!["password"]);
            // await sharedPreferences!
            //     .setString("photoUrl", snapshot.data()!["photoUrl"]);
            // List<String> userCartList =
            //     snapshot.data()!["userCart"].cast<String>();
            // await sharedPreferences!.setStringList("userCart", userCartList);

            Navigator.pop(context);
            // Navigator.pushNamed(context, LoginSuccessScreen.routeName);
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => LoginSuccessScreen(),
              ),
            );
          } else {
            firebaseAuth.signOut();
            Navigator.pop(context);
            Fluttertoast.showToast(msg: "Your account has been blocked!");
          }
        }
        //if user is not a user
        else {
          firebaseAuth.signOut();
          Navigator.pop(context);

          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (c) => const LoginScreen(),
          //   ),
          // );
          showDialog(
            context: context,
            builder: (c) {
              return const ErrorDialog(
                message: "No record exist.",
              );
            },
          );
        }
      },
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      controller: passwordController,
      cursorColor: kPrimaryColor,
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        labelStyle: TextStyle(color: kPrimaryColor),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: emailController,
      cursorColor: kPrimaryColor,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        labelStyle: TextStyle(color: kPrimaryColor),
        focusColor: kPrimaryColor,

        hintText: "Enter your email",

        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}
