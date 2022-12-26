import 'package:flutter/material.dart';
import 'package:marlo_project/story/theme.dart';
import 'package:story_view/story_view.dart';
import 'package:marlo_project/login/biometric.dart';

// void main() {
//   runApp(const StoryViewScreen(Value: '',));
// }

class StoryViewScreen extends StatelessWidget {
  const StoryViewScreen({super.key, required String Value});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final StoryController controller = StoryController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(15, 106, 150, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          highlightColor: Colors.transparent,
          icon: Image.asset(
            "assets/images/left arrow.png",
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pushNamed('/passcode');
          },
        ),
        elevation: 0,
      ),
      
      body: Stack(
        children: [
          
          StoryView(storyItems: [
             StoryItem.text( title: "",
              backgroundColor: Color.fromRGBO(15, 106, 150, 1),
             roundedTop: false,)
          ], controller: controller),
          
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 30,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Streamline your transactions.',
                    style: TextStyle(
                        color: Color.fromRGBO(244, 244, 244, 1),
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'You simply review and approve you teams \n transactions. Say goodbye to chasing paperwork.',
                style: TextStyle(
                    color: Color.fromRGBO(200, 216, 228, 1),
                    fontSize: 12,
                    fontWeight: FontWeight.w700),
              ),
            ),
         
             Container(
                 width: 100,
                 height:450, 
                 alignment: Alignment.topRight,
                 child: Image.asset("assets/images/groupsplash.png")),  
          ],
        ),
        
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: Row(
        children: [
          Container(
              margin: EdgeInsets.all(8),
              height: 35,
              width: 140,
              // width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: <BoxShadow>[],
                color: bDisabledDark,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginForm()),
                );
                },
                child: Text("Login", style: TextStyle(color: Colors.white)),
              )),
          SizedBox(
            width: 5,
          ),
          Container(
              height: 35,
              width: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: <BoxShadow>[],
                color: bSecondaryNormal,
              ),
              child: TextButton(
                onPressed: () {},
                child: Text("Register", style: TextStyle(color: Colors.black)),
              ))
        ],
      ),
    );
  }
}

