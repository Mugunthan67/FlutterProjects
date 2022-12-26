import 'package:flutter/material.dart';
import 'package:marlo_project/login/login_page.dart';
import 'package:marlo_project/themes/themecolors.dart';

class RoleScreen extends StatefulWidget {
  const RoleScreen({super.key, required String Value});

  @override
  State<RoleScreen> createState() => _RoleScreenState();
}

class _RoleScreenState extends State<RoleScreen> {
  String dropdownValue = 'Admin';

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          icon: Image.asset('assets/images/left arrow.png',
          color:Colors.black,
          ),
          onPressed: (){
            Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login(Value: '',)),);
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
                margin: EdgeInsets.symmetric(horizontal:25),
                child: Text("Roles",
                style: TextStyle(color: Colors.black,
                fontSize: 30,
                fontFamily: 'Noto sans',
                fontWeight: FontWeight.w700,
                ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
               margin: EdgeInsets.only(left: 10),
               width: 380,
                height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                title:Text('Admin', style:TextStyle( color:  Colors.blue,fontSize: 15),),
                minLeadingWidth: 22,
                leading: Container(
                     child: Icon(Icons.radio_button_off,color: Colors.blue,)
                    // height: 50,
                    // width: 50,
                    // decoration: BoxDecoration(
                    //   color: Color.fromRGBO(0, 69, 91, 1),
                    //   borderRadius: BorderRadius.circular(10),
              ),
              trailing: 
                   Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(231, 247, 252, 1),),
                    width: 60,
                    height: 80,
                  alignment: Alignment.center,
                        margin: const EdgeInsets.all(8),
                        child: Text('View',style: TextStyle(color: Color.fromRGBO(12, 171, 223, 1),fontWeight: FontWeight.w600),)
                        ),
              )
              ),
              SizedBox(height: 15,),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                title: Text('Approver',style: TextStyle(color: Color.fromRGBO(117, 128, 138, 1),fontSize: 15),),
                minLeadingWidth: 20,
                leading: Container(
                  child: Icon(Icons.radio_button_off,color: Color.fromRGBO(187, 201, 205, 1),)
                  ),
                  trailing: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(231, 247, 252, 1)),
                    width: 60,
                    height: 40,
                    alignment: Alignment.center,
                   
                    child: Text('View',style: TextStyle(color: Color.fromRGBO(12, 171, 223, 1),fontWeight: FontWeight.w600),),
                    ),
              ),
              SizedBox(height: 15,),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                title: Text('Preparer',style: TextStyle(color: Color.fromRGBO(117, 128, 138, 1),fontSize: 15),),
                minLeadingWidth: 20,
                leading: Container(
                  child: Icon(Icons.radio_button_off,color: Color.fromRGBO(187, 201, 205, 1),)
                  ),
                  trailing: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(231, 247, 252, 1)),
                    width: 60,
                    height: 40,
                    alignment: Alignment.center,
                   
                    child: Text('View',style: TextStyle(color: Color.fromRGBO(12, 171, 223, 1),fontWeight: FontWeight.w600),),
                    ),
              ),
              SizedBox(height: 15,),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                title: Text('Viewer',style: TextStyle(color: Color.fromRGBO(117, 128, 138, 1),fontSize: 15),),
                minLeadingWidth: 20,
                leading: Container(
                  child: Icon(Icons.radio_button_off,color: Color.fromRGBO(187, 201, 205, 1),)
                  ),
                  trailing: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(231, 247, 252, 1)),
                    width: 60,
                    height: 40,
                    alignment: Alignment.center,
                   
                    child: Text('View',style: TextStyle(color: Color.fromRGBO(12, 171, 223, 1),fontWeight: FontWeight.w600),),
                    ),
              ),
              SizedBox(height: 15,),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                title: Text('Employee',style: TextStyle(color: Color.fromRGBO(117, 128, 138, 1),fontSize: 15),),
                minLeadingWidth: 20,
                leading: Container(
                  child: Icon(Icons.radio_button_off,color: Color.fromRGBO(187, 201, 205, 1),)
                  ),
                  trailing: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(231, 247, 252, 1)),
                    width: 60,
                    height: 40,
                    alignment: Alignment.center,
                   
                    child: Text('View',style: TextStyle(color: Color.fromRGBO(12, 171, 223, 1),fontWeight: FontWeight.w600),),
                    ),
              )
            ]
        ),
        )
      )
      );
  }
}

//void main() => runApp(const RoleScreen(Value: '',));