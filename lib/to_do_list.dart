import 'package:flutter/material.dart';
import 'package:practice/task_detail_screen.dart';
import 'models/task.dart';
class TaskListScreen extends StatefulWidget{
  const TaskListScreen({super.key});
  @override
  State<TaskListScreen> createState() => _TaskListScreenState();
}
class _TaskListScreenState extends State<TaskListScreen>{
  List<Task> tasks = [];
  void add(){
    setState(() {
      tasks.add(Task(title: 'new Task ${tasks.length+1}', description: 'Task Description'));
    });
  }
  void delete(int index){
    setState(() {
      tasks.removeAt(index);
    });
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('TodoList'),),
      floatingActionButton: FloatingActionButton(onPressed: add,child: const Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: tasks.length ,
          itemBuilder: (context,index){
            return ListTile(
              title: Text(tasks[index].title,
              style: TextStyle(
                decoration: tasks[index].isComplete? TextDecoration.lineThrough:null,

              ),
              ),
              trailing: IconButton(onPressed: ()=>delete(index), icon: const Icon(Icons.delete),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> task_details_screen(task:tasks[index]))).then((_)=>setState(() {

                }));
              },
            );
          }
      ),
    );
  }
}