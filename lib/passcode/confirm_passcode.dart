import 'package:flutter/material.dart';
import 'package:marlo_project/login/login_page.dart';
import 'package:marlo_project/main.dart';
import 'package:marlo_project/themes/themecolors.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_login/login.dart';

class ConfirmPasscode extends StatefulWidget {
  const ConfirmPasscode({Key? key, required String Value}) : super(key: key);

  @override
  State<ConfirmPasscode> createState() => _ConfirmPasscodeState();
}

class _ConfirmPasscodeState extends State<ConfirmPasscode> {
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
                        SizedBox(height:70),
                        Text(
                          "Confirm passcode",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                       
                      ],
                    )),
              ),

              // Text("Enter your Password",
              // style: TextStyle(color: Colors.black),
              // ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 30,
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
              childAspectRatio: 0.9 / 0.7,
            ),
            itemBuilder: (context, index) => Container(
              margin: EdgeInsets.all(10.0),
              //width: 20,
              height: 100,
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
                                
                                
                               showModalBottomSheet(
                                context: context,
                                shape: const RoundedRectangleBorder( // <-- SEE HERE
                                borderRadius: BorderRadius.vertical( 
                                top: Radius.circular(25.0),
                                ),
                                ),
                                   builder: (context) {
                                     return Container(
                                      height: 200,
                                      //color: Colors.white,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                          Center(
                                            //  alignment: Alignment.topCenter,
                                              child: Image.asset('assets/images/Rectangle.png',color: Color.fromRGBO(198,235,246,1),)
                                              ),
                                            SizedBox(height: 20,),
                                            Container(
                                                alignment: Alignment.center,
                                              child: Image.asset('assets/images/tick.png',color: Color.fromRGBO(12,177,223,1,),),
                                              ),
                                            SizedBox(height: 30,),
                                             Text('Passcode has been changed',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),
                                            ),
                                            SizedBox(height: 2,),
                                            Text('sucessfully',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),)
                                          ],
                                        ),
                                      );
                                   }
                                   );
                              //  Navigator.of(context).pushNamed('/login');
                                message = "Sucess";
                              });
                            } else {
                              setState(() {
                                
                                showModalBottomSheet(
                                   context: context, 
                                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20)
                                  )
                                  ),
                                  builder: (context) {
                                    return Container(height: 270,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Center(
                                          child: Image.asset('assets/images/Rectangle.png',color: Color.fromRGBO(198, 235, 246, 1),),
                                        ),
                                        SizedBox(height: 20,),
                                        Container(
                                          alignment: Alignment.center,
                                          child: Image.asset('assets/images/wrong.png',color: Color.fromRGBO(243, 77, 63, 1),),
                                        ),
                                        SizedBox(height: 30,),
                                        const Text('Something went wrong',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18),
                                        ),
                                        SizedBox(height: 5),
                                      Text('Mobile number is the same',style: TextStyle(color: Color.fromRGBO(117, 128, 138, 1),fontSize: 12,fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(height: 20),
                                      Container(
                                        width:290,
                                        height: 40,
                                        child:  MaterialButton(
                                        color: Color.fromRGBO(12, 171, 223, 1),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Text('Close',style: TextStyle(color: Colors.white,fontSize: 15),),
                                        onPressed: (){
                                          Navigator.pop(context);
                                        }))
                                     
                                 
                                      ],
                                    ),
                                    );
                                  }
                                  );
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
                            ? Icon(Icons.backspace_outlined,color: Colors.black,)
                            // ImageIcon(
                            //     AssetImage("assets/images/biometric.png"),
                            //     color: Color.fromRGBO( 12,177,223,1,),
                            //   )
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
      ]),
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


