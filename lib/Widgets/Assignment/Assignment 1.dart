import 'package:flutter/material.dart';



class ProfileApp extends StatefulWidget {
  const ProfileApp({super.key});

  @override
  State<ProfileApp> createState() => _ProfileAppState();
}
String name = "Guest";
int count = 0;
TextEditingController myController = TextEditingController();

class _ProfileAppState extends State<ProfileApp> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Profile App", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
          padding: EdgeInsetsGeometry.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            TextField(
              controller: myController,
              onSubmitted: (value) {
                setState(() {
                  if(value == ""){
                    name = "Guest";
                  }else{
                    name = value;
                  }

                });
              },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person, color: Colors.grey),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 3,
                    color: Color(0xffbcbcbc)
                  )
                ),
                hint: Text("Enter your first name", style: TextStyle(color: Colors.grey),)

              ),
            ),

            SizedBox(height: 40,),

            CircleAvatar(
              radius: 70,
              backgroundColor: Colors.blue,
              child: Icon(Icons.person, size: 70, color: Colors.white,),
            ),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hello, ", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                Text("$name", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.blue),),
              ],
            ),

            SizedBox(height: 20,),


            Text("Welcome to the profile app. Please enter your name above to see the greeting message.", style: TextStyle(color: Colors.grey), textAlign: TextAlign.center,),


            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 50,

                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 10)
                    )]
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        name = myController.text;
                      });
                    },
                    child: Center(child: Text("Update Name", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),)),
                  ),

                ),

                SizedBox(width: 20,),

                TextButton(onPressed: () => {setState(() {
                  name = "Guest";
                })}, child: Text("Reset Name", style: TextStyle(color: Colors.blue, fontSize: 15, fontWeight: FontWeight.bold),)),


              ],
            ),

            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              height: 70,
              padding: EdgeInsetsGeometry.all(20),
              
              decoration: BoxDecoration(
                color: Color(0xffeaebfd),
                borderRadius: BorderRadius.circular(12),
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Tap Count: ${count}", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                  IconButton(
                      padding: EdgeInsets.zero,
                    onPressed: () {
                        setState(() {
                          count++;
                        });
                  },
                    icon: Icon(Icons.touch_app,color: Colors.blue,), alignment: AlignmentGeometry.topCenter,
                  )
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
