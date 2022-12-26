import 'package:flutter/material.dart';
import 'package:marlo_project/themes/themecolors.dart';
import 'package:marlo_project/bottomsheet/bottomsheet.dart';

void main() => runApp(const name());
class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:InviteScreen()
    );
  }
}

class InviteScreen extends StatefulWidget {
  const InviteScreen({super.key});

  @override
  State<InviteScreen> createState() => _InviteScreenState();
}

class _InviteScreenState extends State<InviteScreen> {
  String dropdownValue = 'Admin';

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          icon: Image.asset('assets/images/left arrow.png',
          color:Colors.black,
          ),
          onPressed: (){

          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        ),
        body:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal:25),
                child: Text("Invite",
                style: TextStyle(color: Colors.black,
                fontSize: 30,
                fontFamily: 'Noto sans',
                fontWeight: FontWeight.w700,
                ),
                ),
              ),

              SizedBox(height: 15),
              Container(
                height: 45,
                width: 300,

                margin: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                  fillColor: Color.fromRGBO(233, 238, 240, 1),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20)),
                    labelText: 'Business email',
                    labelStyle: TextStyle(color: Colors.black)
                  ),
                  ),
              ),
              SizedBox(height: 10),
               Container(
                height: 40,
                width: 300,
                 child: TextField(
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                    fillColor: Color.fromRGBO(233, 238, 240, 1),
                    filled: true,
                    suffixIcon: IconButton(icon: Icon(Icons.keyboard_arrow_down_outlined,color: Colors.black,size: 25,),
                     // child: IconButton(icon: Icon(Icons.keyboard_arrow_down_outlined,color: Colors.black,size: 25,),
                     //   // child: const Text('showModalBottomSheet'),
                        onPressed: () {
                          // when raised button is pressed
                        // we display showModalBottomSheet
                         showModalBottomSheet(
                           context: context,
                           // color is applied to main screen when modal bottom screen is displayed
                           barrierColor: Colors.greenAccent,
                           //background color for modal bottom screen
                           backgroundColor: Colors.yellow,
                           //elevates modal bottom screen
                           elevation: 10,
                           // gives rounded corner to modal bottom screen
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(10.0),
                           ),
                           builder: (BuildContext context) {
                             // UDE : SizedBox instead of Container for whitespaces
                             return SizedBox(
                  height: 200,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Text('GeeksforGeeks'),
                      ],
                    ),
                  ),
                             );
                           },
                         );
                       },
                     ),
                   border: OutlineInputBorder(
                      
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                        labelText: 'Admin',
                      labelStyle: TextStyle(color: Colors.black),
                    )
                 ),
               )
            ]
          ),
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
                
              },
              child: Text("Continue", style: TextStyle(color: Colors.white)),
            )),
                  );
//                 DropdownButton<String>(
//                   isExpanded: true,
//                   icon: Icon(Icons.keyboard_arrow_down_outlined,color: Colors.blue,),
//   value: dropdownValue,
//   items: <String>['Admin', 'Approver', 'Preparer', 'Viewer','Employee']
//       .map<DropdownMenuItem<String>>((String value) {
//     return DropdownMenuItem<String>(
//       value: value,
//       child: Text(
//         value,
//         style: TextStyle(fontSize: 15),
//       ),
//     );
//   }).toList(),
  
//   onChanged: (String? newValue) {
//     setState(() {
//       dropdownValue = newValue!;
//     });
//   },
// ),
               
          
  }
}




