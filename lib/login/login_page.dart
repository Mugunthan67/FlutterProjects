import 'package:flutter/material.dart';
import 'package:marlo_project/invite%20screen/roles.dart';
import 'package:marlo_project/login/passcode.dart';
import 'package:marlo_project/navigation/rootscreen.dart';
import 'package:marlo_project/themes/themecolors.dart';
import 'package:marlo_project/token/controller.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class Login extends StatefulWidget {
  const Login({super.key, required String Value});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
 
  Controller authController = Controller();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: Image.asset(
              "assets/images/left arrow.png",
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Passcode(Value: '',)),);
            },
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              const SizedBox(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  "Log in to Marlo",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 34,
                      fontFamily: 'Noto sans',
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Don't have an account?",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(117, 128, 138, 1)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 5.0),
                    ),
                    Text(
                      "Sign-up ",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(12, 177, 223, 1)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                    controller: authController.usernameController,
                    decoration: InputDecoration(
                        enabledBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                        fillColor: Color.fromRGBO(233, 238, 240, 1),
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Filed Text",
                        hintStyle: TextStyle(color: Colors.black),
                        labelText: "Username",
                        labelStyle: TextStyle(color: Colors.black))),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                    controller: authController.passwordController,
                    decoration: InputDecoration(
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      fillColor: Color.fromRGBO(233, 238, 240, 1),
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      suffixIcon: Icon(Icons.visibility_off),
                      hintText: "Filed Text",
                      hintStyle: TextStyle(color: Colors.black),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.black),
                    )),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: Text(
                    "Forgot Password",
                    style: TextStyle(color: Colors.blue),
                  )),
                ],
              )
            ])),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
            margin: EdgeInsets.all(20),
            height: 48,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: bPrimary.withOpacity(0.60),
                  blurRadius: 10,
                  offset: Offset(3, 5),
                ),
              ],
              color: bPrimary,
            ),
            child: TextButton(
              onPressed: () {
             authController.loginUser();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NavigateRoot(Value: '',)),);
              },
              child: Text("Sign in", style: TextStyle(color: Colors.white)),
            )
            ),
      ),
    );
  }
}

//void main() => runApp(const Login(Value: '',));




// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:get/get.dart';
// import 'package:marlo_project/bloc/auth/cubit/signin_cubit.dart';
// import 'package:marlo_project/extensions/validator.dart';
// import 'package:marlo_project/themes/themecolors.dart';
// import 'package:marlo_project/widgets/elevated_button.dart';
// import 'package:marlo_project/widgets/helpers.dart';
// import 'package:marlo_project/widgets/text_field.dart';

// class Login extends StatelessWidget {
//   const Login({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var textTheme = Theme.of(context).textTheme;
//     var cubit = BlocProvider.of<SigninCubit>(context);
//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//             child: Form(
//               key: cubit.state.formKey,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   LeadingBackIcon(),
//                   const SizeBoxH(5),
//                   Text(
//                     "Log in to Marlo",
//                     style: textTheme.headline1,
//                   ),
//                   Row(
//                     children: [
//                       Text(
//                         "Don't have an account?",
//                         style: textTheme.subtitle1,
//                       ),
//                       const SizeBoxV(5),
//                       InkWell(
//                         hoverColor: Colors.transparent,
//                         onTap: () {},
//                         child: Text(
//                           'Sign up',
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Color(0xff0666eb),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizeBoxH(context.height / 40),
//                   BlocBuilder<SigninCubit, SigninState>(
//                     builder: (context, state) {
//                       return Column(
//                         children: [
//                           CommonTextField(
//                               controller: state.emailController,
//                               labelText: 'Business email',
//                               inputAction: TextInputAction.next,
//                               validator: (text) => validateEmail(text)),
//                           const SizeBoxH(20),
//                           CommonTextField(
//                             controller: state.passwordController,
//                             labelText: 'Password',
//                             obscure: state.ispasswordVisible ? false : true,
//                             suffixIcon: IconButton(
//                               splashColor: transparent,
//                               color: Colors.grey,
//                               icon: Icon(
//                                 state.ispasswordVisible
//                                     ? Icons.visibility
//                                     : Icons.visibility_off,
//                               ),
//                               onPressed: () {
//                                 cubit.togleEye(!state.ispasswordVisible);
//                               },
//                             ),
//                             inputAction: TextInputAction.next,
//                             validator: (text) => validatePassword(text),
//                           ),
//                         ],
//                       );
//                     },
//                   ),
//                   const SizeBoxH(20),
//                   GestureDetector(
//                     onTap: () {},
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           'Forgot Password',
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Color(0xff0666eb),
//                           ),
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             )),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//         floatingActionButton: CommonButton(
//           onPressed: () => cubit.onLogin(context),
//           child: Text('Sign in'),
//         ),
//       ),
//     );
//   }
// }
