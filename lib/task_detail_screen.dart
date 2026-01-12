import 'package:flutter/material.dart';
import 'models/task.dart';
import 'to_do_list.dart';
class task_details_screen extends StatefulWidget{
  final Task task;
  const task_details_screen({super.key , required this.task});

  @override
  State<task_details_screen> createState() => _task_details_screen();

}
class _task_details_screen extends State<task_details_screen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Task Details'),),
      body: Padding(padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.task.title,
            style: const TextStyle(fontSize: 20),),
          SizedBox(height: 10,),
          Text(widget.task.description),
          SizedBox(height: 10,),
          CheckboxListTile(value:widget.task.isComplete,
              title : const Text('Mark as complete'),
              onChanged: (value){
            setState(() {
              widget.task.isComplete = value!;
            });
              })

        ],
      ),
      ),
    );
  }
}