import 'package:flutter/material.dart';
class LoginUI extends StatelessWidget{
  const LoginUI({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               TextField(
              decoration: InputDecoration(
              labelText: 'Name',
            border: OutlineInputBorder(),
          ),
          ),
                SizedBox(height: 10,),
                TextField(
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(),
          ),
                ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){}, child: Text('Login'))

            ],
          ),
        ),
      ),
    );
  }
}