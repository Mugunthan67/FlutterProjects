// import 'package:flutter/material.dart';
// import 'package:http/http.dart'as http;
// import 'package:marlo_project/models/transfers.dart';
// import 'package:marlo_project/service/apiservice.dart';
// void main() => runApp(const Transfer());
// class Transfer extends StatelessWidget {
//   const Transfer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home:TransferScreen()
//     );
//   }
// }

// class TransferScreen extends StatefulWidget {
//   const TransferScreen({super.key});

//   @override
//   State<TransferScreen> createState() => _TransferScreenState();
// }

// class _TransferScreenState extends State<TransferScreen> {
//  ApiService api = ApiService();
// // Datum? val;
// TransferModel? transfers;
//  // var index;
// @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _getDatas();
//   } 

//   void _getDatas() async {
//     transfers = (await ApiService().getValues());
//     Future.delayed(const Duration(seconds: 0)).then((value) => setState(() {},));
//     print('hi');
//   //  print(bal?.data.length);
//     print(transfers);
//     print("welcome");
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         leading: IconButton(
//           splashColor: Colors.transparent,
//           highlightColor: Colors.transparent,
//           icon: Image.asset('assets/images/left arrow.png',
//           color:Colors.black,
//           ),
//           onPressed: (){

//           },
//         ),
//         backgroundColor: Colors.white,
//         elevation: 0,
//         ), 
//          body: FutureBuilder(
//       future:getValues(),
//       builder: (context,snapshot) {
//         if(transfers!=null){
//           return ListView.builder(
//           itemCount: transfers!.data.length,
//           itemBuilder: (context,index) {
//             return Container(
//               height: 100,
//               padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
//               margin: EdgeInsets.all(10),
//               decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
//               child: ListTile(
//                 leading: Container(
//                   height: 50,
//                   width: 50,
//                   color: Color.fromRGBO(0, 69, 91, 1),
//                   child:Image.asset("assets/images/uparrow.png")
//                   ),
//                   title: Text(transfers!.data[index].amount,
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 15),
//                   ),
//                   subtitle:  Text(transfers!.data[index].description,
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 15),
//                   ),
               
//                 // children: [
//                 // Text(bal!.data[index].currency,
//                 // style: TextStyle(
//                 //   color: Colors.black,
//                 //   fontSize: 15),
//                 //   ),
//                 //   Text(bal!.data[index].totalAmount,
//                 // style: TextStyle(
//                 //   color: Colors.black,
//                 //   fontSize: 15),
//                 //   ),
//                 //   Text(bal!.data[index].availableAmount,
//                 // style: TextStyle(
//                 //   color: Colors.black,
//                 //   fontSize: 15),
//                 //   ),
//               ),
//             );
//           }
//         );
        
//         }else if(snapshot.hasError) {
//           return Text('Result: ${snapshot.data}');
           
//         }
//         else {
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         }
         
//       }
//          )
//     );

//   }
  
//   getValues() {}
// }