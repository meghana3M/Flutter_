
import 'package:flutter/material.dart';
class CounterApp extends StatefulWidget{
  final String name;
  final int age;
  const CounterApp({super.key,required this.name, required this.age});
  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp>{
  late int counter = min;
  final int min=0;
  final int max = 20;


  void decrement(){
    if(counter>min){
      setState(() {
        counter--;
      });
    }
  }
  void increment(){
    if(counter<max){
      setState(() {
        counter++;
      });
    }
  }
  void reset(){
    setState(() {
      counter =0;
    });

  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text('${counter} ${widget.name} ,Welcome back'),
      ),
      // floatingActionButton: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     FloatingActionButton(onPressed: counter == min ? null : decrement, tooltip: "Decrement", child: Icon(Icons.remove),),
      //     SizedBox(width:10),
      //     FloatingActionButton(onPressed: counter == max ? null : increment, child: Icon(Icons.add),),
      //     SizedBox(width:10),
      //     FloatingActionButton(onPressed: reset, child: Icon(Icons.reset_tv),),
      //   ],
      // ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: counter == min ? null : decrement,
            iconSize: 32,
            color: Colors.blue,
            disabledColor: Colors.grey,
          ),
          const SizedBox(width: 10),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: counter == max ? null : increment,
            iconSize: 32,
            color: Colors.blue,
            disabledColor: Colors.grey,
          ),
          const SizedBox(width: 10),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: reset,
            iconSize: 32,
            color: Colors.blue,
          ),
        ],
      ),

    );
  }
}


