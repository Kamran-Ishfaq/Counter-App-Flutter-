import 'package:flutter_projects/Home.dart';
import 'package:flutter_projects/main.dart';
import 'package:flutter_projects/login.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;
  void incrementCounter(){
    setState(() {
      counter++;
    });
  }
  void resetCounter(){
    setState(() {
      counter = 0;
    });
  }
  void decrementCounter(){
    setState(() {
      counter--;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
            'home page',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 40,
            color: Colors.white,
        ),
        ),
      ),
     body: Container(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Counter App',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.white,
            ),
          ),
          Text(

            counter.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 200,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    incrementCounter();
                  },
                  child:Icon(Icons.add,size: 40,),
              ),
              ElevatedButton(onPressed: () {
                resetCounter();
              },
                child:Icon(Icons.restore,size: 40,),
              ),
              ElevatedButton(onPressed: () {
                decrementCounter();
              },
                child:Icon(Icons.remove,size: 40,),
              ),
            ],
          ),


        ],
      ),
    ),
),
    );
  }
}
