import 'package:flutter/material.dart';
import 'package:marlo_project/models/balance.dart';
import 'package:marlo_project/service/apiservice.dart';
import 'package:country_picker/country_picker.dart';

void main() => runApp(const DsahBoard());
class DsahBoard extends StatelessWidget {
  const DsahBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:DsahBoardScreenScreen()
    );
  }
}

class DsahBoardScreenScreen extends StatefulWidget {
  const DsahBoardScreenScreen({super.key});

  @override
  State<DsahBoardScreenScreen> createState() => _DsahBoardScreenScreenState();
}

class _DsahBoardScreenScreenState extends State<DsahBoardScreenScreen> {
  String dropdownValue = 'Admin';
 ApiService api = ApiService();
  BalanceModel? bal;
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image.asset("assets/images/Top Nav bar.png"),
        actions: [
          IconButton(onPressed: (){},
          icon:Icon(Icons.notifications,color: Colors.blue,size: 30,))
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 10,),
             Container(
             
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 70,
              child:
              TextButton(onPressed: () {
                showCountryPicker(
                context: context, onSelect: 
                (Country value) {
                  print(value.countryCode.toString());
                  print(value.phoneCode.toString());
                }
                );
              },child: Text('gvjh'),)
          //   child:  ListView(
          //   scrollDirection: Axis.horizontal,
          //   children: [
          //     Container(
          //       height: 90,
          //       width: 110,
          //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
          //       child: Image.asset("assets/images/british.png",),
          //     ),
          //     SizedBox(width: 10,),
          //      Container(
          //       height: 90,
          //       width: 110,
          //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
          //       child: Image.asset("assets/images/us.png",),
          //     ),
          //     SizedBox(width: 10,),
          //      Container(
          //       height: 90,
          //       width: 110,
          //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
          //       child: Image.asset("assets/images/canada.png",),
          //     ),
          //   ],
          // ),
            ),
            SizedBox(height: 10,),
         
          //     Row(
          //       children: [
          //           Container(
          //   margin: EdgeInsets.symmetric(horizontal: 20),
          //    height: 120,
          //    width: 90,
          //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
          //   child: Image.asset("assets/images/british.png")
          //   ),
          //   SizedBox(width: 5,),
            
          // Container(
          //   margin: EdgeInsets.symmetric(horizontal: 20),
          //   height: 120,
          //   width: 90,
          //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
          //   child: Image.asset("assets/images/us.png")
          //   ),
          //   SizedBox(width: 5,),
          //   Container(
          //   margin: EdgeInsets.symmetric(horizontal: 20),
          //   height: 110,
          //   width: 80,
          //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
          //   child: Image.asset("assets/images/canada.png")
          //   ),
          //       ],
                
          //     ),
              Container(
                margin: EdgeInsets.symmetric(horizontal:10),
                child: Text("To do.4",
                style: TextStyle(color: Color.fromRGBO(151, 151, 151, 1),
                fontSize: 20,
                fontFamily: 'Noto sans',
                fontWeight: FontWeight.w700,
                ),
                ),
              ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 70,
            child:  ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 150,
                width: 90,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(84, 50, 144, 1),),
                child: Image.asset("assets/images/verify business.png",),
              ),
              SizedBox(width: 10,),
               Container(
                height: 150,
                width: 90,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(255,159,10,1)),
                child: Image.asset("assets/images/verify identify.png",),
              ),
              SizedBox(width: 10,),
               Container(
                height: 150,
                width: 90,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(0, 179, 215, 1)),
                child: Image.asset("assets/images/open marlo.png",),
              ),
              SizedBox(width: 10,),
               Container(
                height: 150,
                width: 90,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(0, 205, 33, 1)),
                child: Image.asset("assets/images/prequalified.png",),
              )
            ],
          ),
            ),
         
              SizedBox(height: 20,),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal:20),
                    child: Text("All transactions",
                    style: TextStyle(color: Color.fromRGBO(151, 151, 151, 1),
                    fontSize: 15,
                    fontFamily: 'Noto sans',
                    fontWeight: FontWeight.w700,
                    ),
                    ),
                  ),
                  SizedBox(width: 65,),
                   Container(
                    margin: EdgeInsets.symmetric(horizontal:25),
                    child: Text("See all",
                    style: TextStyle(color: Colors.blue,
                    fontSize: 15,
                    fontFamily: 'Noto sans',
                    fontWeight: FontWeight.w700,
                    ),
                    ),
                  ),
              ],
            ),
         
     
          // SizedBox(width: 5,),
          
          //   SizedBox(height: 10),
          //   Container(
          //     margin: EdgeInsets.symmetric(horizontal: 20),
          //     child:Text('To do.4',style: TextStyle( color: Color.fromRGBO(151, 151, 151, 1),),)
          //   )
          SizedBox(height: 10),
          Container(child:  FutureBuilder(
      future: getUsers(),
      builder: (context,snapshot) {
        if(bal!=null){
          return ListView.builder(
          //itemCount: bal!.data.length,
          itemBuilder: (context,index) {
            return Container(
              height: 100,
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  color: Color.fromRGBO(0, 69, 91, 1),
                  child:Image.asset("assets/images/uparrow.png")
                  ),
                  title: Text(bal!.data[index].currency,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15),
                  ),
                  subtitle:  Text(bal!.data[index].totalAmount,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15),
                  ),
                  trailing: Text(bal!.data[index].availableAmount,),
               
                // children: [
                // Text(bal!.data[index].currency,
                // style: TextStyle(
                //   color: Colors.black,
                //   fontSize: 15),
                //   ),
                //   Text(bal!.data[index].totalAmount,
                // style: TextStyle(
                //   color: Colors.black,
                //   fontSize: 15),
                //   ),
                //   Text(bal!.data[index].availableAmount,
                // style: TextStyle(
                //   color: Colors.black,
                //   fontSize: 15),
                //   ),
              ),
            );
          }
           );
           }
            else if(snapshot.hasError) {
          return Text('Result: ${snapshot.data}');
           
        }
      
      
        else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
         
      }
         ),)
          
          //  Container(
          //         padding: EdgeInsets.fromLTRB(5, 2 , 5, 2),
          //         margin: EdgeInsets.only(left: 10),
          //         width: 300,
          //         height: 80,
          //         child:ListTile(
          //         contentPadding: EdgeInsets.symmetric(horizontal: 15),
          //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          //         tileColor: Colors.white,
          //         //  horizontalTitleGap: 0.1,
          //         title: 
          //         Text(
          //           "Rent",
          //           style: TextStyle(
          //               color: Colors.black,
          //               fontFamily: 'Noto Sans',
          //               fontSize: 16,
          //               fontWeight: FontWeight.w800),
          //         ),
          //         subtitle: Text('sat.16 jul. 9.00 pm',style: TextStyle(color: Color.fromRGBO(151, 151, 151, 1),fontFamily:'Noto Sans',fontWeight: FontWeight.w800,fontSize: 15 ),),
          //         leading: Container(
          //           height: 35,
          //           width: 35,
          //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromRGBO(0, 69, 91, 1),),
          //           child: ImageIcon(AssetImage("assets/images/uparrow.png"),size: 15,color: Colors.white,),
          //         ),
          //         trailing: Text('-850.00',style: TextStyle(color: Colors.black,fontSize: 15),),
          //         minLeadingWidth: 5,
          //       ),
          //   ) ,

          //    Container(
          //         padding: EdgeInsets.fromLTRB(5, 2 , 5, 2),
          //         margin: EdgeInsets.only(left: 10),
          //         width: 300,
          //         height: 80,
          //         child:ListTile(
          //         contentPadding: EdgeInsets.symmetric(horizontal: 15),
          //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          //         tileColor: Colors.white,
          //         //  horizontalTitleGap: 0.1,
          //         title: 
          //         Text(
          //           "Rent",
          //           style: TextStyle(
          //               color: Colors.black,
          //               fontFamily: 'Noto Sans',
          //               fontSize: 16,
          //               fontWeight: FontWeight.w800),
          //         ),
          //         subtitle: Text('sat.16 jul. 9.00 pm',style: TextStyle(color: Color.fromRGBO(151, 151, 151, 1),fontFamily:'Noto Sans',fontWeight: FontWeight.w800,fontSize: 15 ),),
          //         leading: Container(
          //           height: 35,
          //           width: 35,
          //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromRGBO(0, 69, 91, 1),),
          //           child: ImageIcon(AssetImage("assets/images/uparrow.png"),size: 15,color: Colors.white,),
          //         ),
          //         trailing: Text('-850.00',style: TextStyle(color: Colors.black,fontSize: 15),),
          //         minLeadingWidth: 5,
          //       ),
          //   ) ,

          //    Container(
          //         padding: EdgeInsets.fromLTRB(5, 2 , 5, 2),
          //         margin: EdgeInsets.only(left: 10),
          //         width: 300,
          //         height: 80,
          //         child:ListTile(
          //         contentPadding: EdgeInsets.symmetric(horizontal: 15),
          //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          //         tileColor: Colors.white,
          //         //  horizontalTitleGap: 0.1,
          //         title: 
          //         Text(
          //           "Rent",
          //           style: TextStyle(
          //               color: Colors.black,
          //               fontFamily: 'Noto Sans',
          //               fontSize: 16,
          //               fontWeight: FontWeight.w800),
          //         ),
          //         subtitle: Text('sat.16 jul. 9.00 pm',style: TextStyle(color: Color.fromRGBO(151, 151, 151, 1),fontFamily:'Noto Sans',fontWeight: FontWeight.w800,fontSize: 15 ),),
          //         leading: Container(
          //           height: 35,
          //           width: 35,
          //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromRGBO(0, 69, 91, 1),),
          //           child: ImageIcon(AssetImage("assets/images/uparrow.png"),size: 15,color: Colors.white,),
          //         ),
          //         trailing: Text('-850.00',style: TextStyle(color: Colors.black,fontSize: 15),),
          //         minLeadingWidth: 5,
          //       ),
          //   ) ,

          //    Container(
          //         padding: EdgeInsets.fromLTRB(5, 2 , 5, 2),
          //         margin: EdgeInsets.only(left: 10),
          //         width: 300,
          //         height: 80,
          //         child:ListTile(
          //         contentPadding: EdgeInsets.symmetric(horizontal: 15),
          //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          //         tileColor: Colors.white,
          //         //  horizontalTitleGap: 0.1,
          //         title: 
          //         Text(
          //           "Rent",
          //           style: TextStyle(
          //               color: Colors.black,
          //               fontFamily: 'Noto Sans',
          //               fontSize: 16,
          //               fontWeight: FontWeight.w800),
          //         ),
          //         subtitle: Text('sat.16 jul. 9.00 pm',style: TextStyle(color: Color.fromRGBO(151, 151, 151, 1),fontFamily:'Noto Sans',fontWeight: FontWeight.w800,fontSize: 15 ),),
          //         leading: Container(
          //           height: 35,
          //           width: 35,
          //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromRGBO(0, 69, 91, 1),),
          //           child: ImageIcon(AssetImage("assets/images/uparrow.png"),size: 15,color: Colors.white,),
          //         ),
          //         trailing: Text('-850.00',style: TextStyle(color: Colors.black,fontSize: 15),),
          //         minLeadingWidth: 5,
          //       ),
          //   ) ,

          //    Container(
          //         padding: EdgeInsets.fromLTRB(5, 2 , 5, 2),
          //         margin: EdgeInsets.only(left: 10),
          //         width: 300,
          //         height: 80,
          //         child:ListTile(
          //         contentPadding: EdgeInsets.symmetric(horizontal: 15),
          //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          //         tileColor: Colors.white,
          //         //  horizontalTitleGap: 0.1,
          //         title: 
          //         Text(
          //           "Rent",
          //           style: TextStyle(
          //               color: Colors.black,
          //               fontFamily: 'Noto Sans',
          //               fontSize: 16,
          //               fontWeight: FontWeight.w800),
          //         ),
          //         subtitle: Text('sat.16 jul. 9.00 pm',style: TextStyle(color: Color.fromRGBO(151, 151, 151, 1),fontFamily:'Noto Sans',fontWeight: FontWeight.w800,fontSize: 15 ),),
          //         leading: Container(
          //           height: 35,
          //           width: 35,
          //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromRGBO(0, 69, 91, 1),),
          //           child: ImageIcon(AssetImage("assets/images/uparrow.png"),size: 15,color: Colors.white,),
          //         ),
          //         trailing: Text('-850.00',style: TextStyle(color: Colors.black,fontSize: 15),),
          //         minLeadingWidth: 5,
          //       ),
          //   ) ,
          //   SizedBox(height: 5,),
          //   Container(
          //         padding: EdgeInsets.fromLTRB(5, 2 , 5, 2),
          //         margin: EdgeInsets.only(left: 10),
          //         width: 300,
          //         height: 80,
          //         child:ListTile(
          //         contentPadding: EdgeInsets.symmetric(horizontal: 15),
          //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          //         tileColor: Colors.white,
          //         //  horizontalTitleGap: 0.1,
          //         title: 
          //         Text(
          //           "Rent",
          //           style: TextStyle(
          //               color: Colors.black,
          //               fontFamily: 'Noto Sans',
          //               fontSize: 16,
          //               fontWeight: FontWeight.w800),
          //         ),
          //         subtitle: Text('sat.16 jul. 9.00 pm',style: TextStyle(color: Color.fromRGBO(151, 151, 151, 1),fontFamily:'Noto Sans',fontWeight: FontWeight.w800,fontSize: 15 ),),
          //         leading: Container(
          //           height: 35,
          //           width: 35,
          //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromRGBO(0, 69, 91, 1),),
          //           child: ImageIcon(AssetImage("assets/images/uparrow.png"),size: 15,color: Colors.white,),
          //         ),
          //         trailing: Text('-850.00',style: TextStyle(color: Colors.black,fontSize: 15),),
          //         minLeadingWidth: 5,
          //       ),
          //   ) ,
          //   SizedBox(height: 5,),
          //   Container(
          //         padding: EdgeInsets.fromLTRB(5, 2 , 5, 2),
          //         margin: EdgeInsets.only(left: 10),
          //         width: 300,
          //         height: 80,
          //         child:ListTile(
          //         contentPadding: EdgeInsets.symmetric(horizontal: 15),
          //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          //         tileColor: Colors.white,
          //         //  horizontalTitleGap: 0.1,
          //         title: 
          //         Text(
          //           "Rent",
          //           style: TextStyle(
          //               color: Colors.black,
          //               fontFamily: 'Noto Sans',
          //               fontSize: 16,
          //               fontWeight: FontWeight.w800),
          //         ),
          //         subtitle: Text('sat.16 jul. 9.00 pm',style: TextStyle(color: Color.fromRGBO(151, 151, 151, 1),fontFamily:'Noto Sans',fontWeight: FontWeight.w800,fontSize: 15 ),),
          //         leading: Container(
          //           height: 35,
          //           width: 35,
          //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromRGBO(0, 69, 91, 1),),
          //           child: ImageIcon(AssetImage("assets/images/uparrow.png"),size: 15,color: Colors.white,),
          //         ),
          //         trailing: Text('-850.00',style: TextStyle(color: Colors.black,fontSize: 15),),
          //         minLeadingWidth: 5,
          //       ),
          //   ) ,
          //   SizedBox(height: 5,),
          //   Container(
          //         padding: EdgeInsets.fromLTRB(5, 2 , 5, 2),
          //         margin: EdgeInsets.only(left: 10),
          //         width: 300,
          //         height: 80,
          //         child:ListTile(
          //         contentPadding: EdgeInsets.symmetric(horizontal: 15),
          //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          //         tileColor: Colors.white,
          //         //  horizontalTitleGap: 0.1,
          //         title: 
          //         Text(
          //           "Rent",
          //           style: TextStyle(
          //               color: Colors.black,
          //               fontFamily: 'Noto Sans',
          //               fontSize: 16,
          //               fontWeight: FontWeight.w800),
          //         ),
          //         subtitle: Text('sat.16 jul. 9.00 pm',style: TextStyle(color: Color.fromRGBO(151, 151, 151, 1),fontFamily:'Noto Sans',fontWeight: FontWeight.w800,fontSize: 15 ),),
          //         leading: Container(
          //           height: 35,
          //           width: 35,
          //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromRGBO(0, 69, 91, 1),),
          //           child: ImageIcon(AssetImage("assets/images/uparrow.png"),size: 15,color: Colors.white,),
          //         ),
          //         trailing: Text('-850.00',style: TextStyle(color: Colors.black,fontSize: 15),),
          //         minLeadingWidth: 5,
          //       ),
          //   ) ,
            ]
        ),
        ),
    );
  }
  
  getUsers() {}
  }
  