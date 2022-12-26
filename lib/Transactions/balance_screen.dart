import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:marlo_project/models/balance.dart';
import 'package:marlo_project/service/apiservice.dart';
void main() => runApp(const Balance());
class Balance extends StatelessWidget {
  const Balance({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:BalanceScreen()
    );
  }
}

class BalanceScreen extends StatefulWidget {
  const BalanceScreen({super.key});

  @override
  State<BalanceScreen> createState() => _BalanceScreenState();
}

class _BalanceScreenState extends State<BalanceScreen> {
 ApiService api = ApiService();
// Datum? val;
BalanceModel? bal;
 // var index;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  } 

  void _getData() async {
    bal = (await ApiService().getUsers());
    Future.delayed(const Duration(seconds: 0)).then((value) => setState(() {},));
    print('hi');
  //  print(bal?.data.length);
    print(bal);
    print("welcome");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 247, 247, 1),
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
        backgroundColor: Color.fromRGBO(247, 247, 247, 1),
        elevation: 0,
        ), 
         body: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal:25),
                child: Text("All Transactions",
                style: TextStyle(color: Colors.red,
                fontSize: 30,
                fontFamily: 'Noto sans',
                fontWeight: FontWeight.w700,
                ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: 35,
                width: 350,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                  fillColor: Color.fromRGBO(233, 238, 240, 1),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20)),
                    suffixIcon: Icon(Icons.search,color: Colors.black,size: 25,),
                    labelText: 'Search',
                    labelStyle: TextStyle(color: Colors.black)
                  ),
                  ),
              ),
            //  SizedBox(height: 10,),
         FutureBuilder(
      future: getUsers(),
      builder: (context,snapshot) {
        // if(bal!=null){
          return ListView.builder(
          //itemCount: bal!.data.length,
          itemBuilder: (context,index) {
          //   return Container(
          //     height: 100,
          //     padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          //     margin: EdgeInsets.all(10),
          //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
          //     child: ListTile(
          //       leading: Container(
          //         height: 50,
          //         width: 50,
          //         color: Color.fromRGBO(0, 69, 91, 1),
          //         child:Image.asset("assets/images/uparrow.png")
          //         ),
          //         title: Text(bal!.data[index].currency,
          //       style: TextStyle(
          //         color: Colors.black,
          //         fontSize: 15),
          //         ),
          //         subtitle:  Text(bal!.data[index].totalAmount,
          //       style: TextStyle(
          //         color: Colors.black,
          //         fontSize: 15),
          //         ),
          //         trailing: Text(bal!.data[index].availableAmount,),
               
               
          //     ),
              
          //   );
          // }
           return Text('Result: ${snapshot.data}');
          }  
        );
        
        // }else if(snapshot.hasError) {
          
           
        // }
        // else {
        //   return Center(
        //     child: CircularProgressIndicator(),
        //   );
        // }
         
      }
         )
            ]
          )
    );
        
    
                   
        // body: 

  }
  
  getUsers() {}
}   
