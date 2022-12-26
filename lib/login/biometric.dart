import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marlo_project/helpers/biometrichelpers.dart';
import 'package:marlo_project/login/login_page.dart';
import 'package:marlo_project/login/passcode.dart';
import 'package:local_auth/local_auth.dart';
import 'package:marlo_project/bottomsheet/bottomsheet.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool showBiometrics = false;
  bool isAuthenticated = false;

  @override
  void initState() {
    super.initState();
    isBiometricAvailable();
  }

  isBiometricAvailable() async {
    showBiometrics = await BiometricHelper().hasEnrolledBiometrics();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(children: <Widget>[
            new Container(),
            new Center(
              child: Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                  children: [
                    SizedBox(height: 60),
                    new Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(26, 98, 198, 1),
                        ),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "MT",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ))),
                    SizedBox(height: 20),
                    Text(
                      "Hey there, Irshad",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Enter the passcod for Marlo Technologies Ltd",
                      style: TextStyle(
                        color: Color.fromRGBO(117, 128, 138, 1),
                        fontSize: 12,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 75),
                    Text(
                      "Unlock with your fingerprint",
                      style: TextStyle(
                        color: Color.fromRGBO(117, 128, 138, 1),
                        fontSize: 14,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    new Center(
                        child: Padding(
                      padding: EdgeInsets.all(25),
                      child: Column(
                        children: [
                          if (showBiometrics) SizedBox(height: 5),
                          //if(showBiometrics)
                          GestureDetector(
                            child: Image.asset(
                              'assets/images/biometric.png',
                              // fit: BoxFit.cover, // Fixes border issues
                              width: 50.0,
                              height: 50.0,
                            ),
                            onTap: () async {
                              isAuthenticated =
                                  await BiometricHelper().authenticate();
                              setState(() {});
                              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login(Value: '',)),);
                            },
                          ),

                          const SizedBox(
                            height: 10,
                          ),
                          if (isAuthenticated)
                            const Text(
                              "Well Done Authenticated",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          SizedBox(height: 10),
                          TextButton(onPressed: (){
                            Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Passcode(Value: '',)),
                );
                          }, child:Text(
                            "Use passcode",
                            style: TextStyle(
                              color: Color.fromRGBO(12, 171, 223, 1),
                              fontSize: 14,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ), )
                          
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            )
          ])),
    );
  }
}

//void main() => runApp(const LoginForm());
