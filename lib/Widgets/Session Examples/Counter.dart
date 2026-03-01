import 'package:flutter/material.dart';


class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counterE = 0;
  int counterB = 0;

  void increase(String name, int inc){
    setState(() {
      if(name == "a"){
        counterE += inc;
      }
      if(name == "b"){
        counterB += inc;
      }

    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Points Counter"),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Team E", style: TextStyle(fontSize: 50),),
              Text("Team B", style: TextStyle(fontSize: 50))
            ],
            
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("${counterE}",style: TextStyle(fontSize: 50)),
              Text("${counterB}",style: TextStyle(fontSize: 50))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonInc(onpressed: (){increase("a", 1);}, Name: "+1"),

              ButtonInc(onpressed: () {increase("b", 1);}, Name: "+1")

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonInc(onpressed: (){increase("a", 2);}, Name: "+2"),

              ButtonInc(onpressed: () {increase("b", 2);}, Name: "+2")

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              ButtonInc(onpressed: (){increase("a", 3);}, Name: "+3"),

              ButtonInc(onpressed: () {increase("b", 3);}, Name: "+3")

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                child: Text("Reset", style: TextStyle(fontSize: 30),),
                onPressed: () {
                  setState(() {
                    counterE = 0;
                    counterB = 0;
                  });

                },
              ),

            ],
          )

        ],
      ),
    );
  }
}


class ButtonInc extends StatelessWidget {
  const ButtonInc({super.key, required this.onpressed, required this.Name});

  final VoidCallback onpressed;
  final String Name;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onpressed, child: Text(Name, style: TextStyle(fontSize: 30),));
  }
}




