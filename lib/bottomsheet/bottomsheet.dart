import 'package:flutter/material.dart';
 
void main() => runApp(const MyApp());
 
// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GeeksforGeeks',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: (){},
             icon: Image.asset('assets/images/left arrow.png',color: Colors.black,)
             ),
             backgroundColor: Colors.white,
             elevation: 0,
        ),
        body:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Invite",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'Noto sans',
                  fontWeight: FontWeight.w700),
                  ),
              ),
              SizedBox(height: 10),
            Column(children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  hintText: 'Username',
                  hintStyle: TextStyle(color:Colors.black)
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  hintText: 'Password',
                  hintStyle: TextStyle(color:Colors.black),
                  suffixIcon: IconButton(icon:Icon(Icons.keyboard_arrow_down_outlined,color: Colors.red,size: 25),
                  onPressed:() => ModalBottomSheetDemo( Value: '',)
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
 
class ModalBottomSheetDemo extends StatelessWidget {
  const ModalBottomSheetDemo({Key? key, required String Value}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Center(
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
          showModalBottomSheet<void>(
           // context and builder are
             // required properties in this widget
             context: context,
             builder: (BuildContext context) {
              // we set up a container inside which
               // we create center column and display text
 
      //         // Returning SizedBox instead of a Container
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
      // )
                  ),
                 border: OutlineInputBorder(
                    
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20)),
                      labelText: 'Admin',
                    labelStyle: TextStyle(color: Colors.black),
                  ))
                  );
  }
}