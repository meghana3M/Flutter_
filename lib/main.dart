import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CounterApp(),
    );
  }
}
class CounterApp extends StatefulWidget{
  const CounterApp({super.key});
  @override
  State<CounterApp> createState() => _CounterAppState();
}
class _CounterAppState extends State<CounterApp>{
  late int counter = min;
  final int min=0;
  final int max = 10;

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
        child: Text('${counter} ,Welcome back'),
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


