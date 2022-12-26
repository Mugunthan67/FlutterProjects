import 'package:flutter/material.dart';
import 'package:marlo_project/auth/mainscreen.dart';
import 'package:marlo_project/helpers/biometrichelpers.dart';
import 'package:marlo_project/login/login_page.dart';
import 'package:marlo_project/passcode/existing_passcode.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_login/login.dart';

class Passcode extends StatefulWidget {
  const Passcode({Key? key, required String Value}) : super(key: key);

  @override
  State<Passcode> createState() => _PasscodeState();
}

class _PasscodeState extends State<Passcode> {
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
  var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
  var inputText = "";
  var actives = [false, false, false, false, false];
  var clears = [false, false, false, false, false];
  var values = [1, 2, 3, 2, 1];
  var currentIndex = 0;
  var message = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Center(
                child: Padding(
                    padding: EdgeInsets.all(23),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
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
                              )),
                        ),
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
                      ],
                    )),
              ),

              // Text("Enter your Password",
              // style: TextStyle(color: Colors.black),
              // ),
              SizedBox(
                height: 32,
              ),
              Container(
                height: 25,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  for (var i = 0; i < actives.length; i++)
                    AnimationBoxItem(
                      clear: clears[i],
                      active: actives[i],
                      value: values[i],
                    ),
                ]),
              ),
              Text(
                message,
                style: TextStyle(
                  color: message == "Sucess" ? Colors.green : Colors.red,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: GridView.builder(
            padding: EdgeInsets.all(15.0),
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 0.9 / 0.6,
            ),
            itemBuilder: (context, index) => Container(
              margin: EdgeInsets.all(10.0),
              width: 20,
              height: 50,
              child: index == 9
                  ? SizedBox()
                  : Center(
                      child: MaterialButton(
                        onPressed: () {
                          //  setState(() {
                          //     actives[currentIndex]== true;
                          //   currentIndex++;
                          //  });
                          if (index == 11) {
                            inputText =
                                inputText.substring(0, inputText.length - 1);
                            clears = clears.map((e) => false).toList();
                            currentIndex--;
                            setState(() {
                              if (currentIndex >= 0)
                                setState(() {
                                  clears[currentIndex] = true;
                                  actives[currentIndex] = false;
                                });
                              else {
                                currentIndex = 0;
                              }
                            });

                            return;
                          } else
                            inputText +=
                                numbers[index == 10 ? index - 1 : index]
                                    .toString();

                          if (inputText.length == 5) {
                            setState(() {
                              clears = clears.map((e) => true).toList();
                              actives = actives.map((e) => false).toList();
                            });
                            if (inputText == "11082") {
                              print("sucess");
                              setState(() {
                                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login(Value: '',)),);
                                message = "Sucess";
                              });
                            } else {
                              setState(() {
                                message = "Invalid Pin";
                              });
                            }
                            inputText = "";
                            currentIndex = 0;
                            return;
                          }
                          message = "";
                          clears = clears.map((e) => false).toList();
                          setState(() {
                            actives[currentIndex] = true;
                            currentIndex++;
                          });
                        },
                        // color: Colors.white30,
                        // minWidth: 55,
                        // height: 55,
                        child: index == 11
                            ? GestureDetector(
                            child: Image.asset(
                              
                              'assets/images/biometric.png',
                              // fit: BoxFit.cover, // Fixes border issues
                              width: 20.0,
                              height: 20.0,
                            ),
                            onTap: () async {
                              isAuthenticated =
                                  await BiometricHelper().authenticate();
                              setState(() {});
                              Navigator.of(context).pushNamed('/existing_passcode');
                            },
                          )
                            : Text(
                                "${numbers[index == 10 ? index - 1 : index]}",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.black,
                                ),
                              ),
                        //  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60.0)),
                      ),
                    ),
            ),
            itemCount: 12,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          height: 90,
          width: 160,
          child: 
         TextButton(onPressed: (){
                             Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  ExistingPasscode(Value: '',)),
                );
                          }, child:Text(
                            "Forgot your passcode?",
                            style: TextStyle(
                              color: Color.fromRGBO(12, 171, 223, 1),
                              fontSize: 14,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ), )
        )
      ]
      ),
    );
  }
}

class AnimationBoxItem extends StatefulWidget {
  final clear;
  final active;
  final value;
  const AnimationBoxItem(
      {super.key, required this.clear, this.active, this.value});
  @override
  _AnimationBoxItemState createState() => _AnimationBoxItemState();
}

class _AnimationBoxItemState extends State<AnimationBoxItem>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.clear) {
      animationController.forward(from: 0);
    }
    return AnimatedBuilder(
      animation: animationController,
      builder: ((context, child) => Container(
            margin: EdgeInsets.all(8.0),
            //color: Colors.red,
            child: Stack(children: [
              Container(),
              AnimatedContainer(
                duration: Duration(seconds: 1),
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: widget.active ? Colors.red : Colors.black),
              ),
              Align(
                alignment:
                    Alignment(0, animationController.value / widget.value - 1),
                child: Opacity(
                  opacity: 1 - animationController.value,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: widget.active
                            ? Colors.red
                            : Color.fromRGBO(187, 201, 205, 1)),
                  ),
                ),
              )
            ]),
          )),
    );
  }
}
