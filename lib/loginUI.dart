import 'package:flutter/material.dart';
import 'package:practice/counter.dart';
class LoginUI extends StatelessWidget{
  LoginUI({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 TextFormField(
                decoration: InputDecoration(
                  hintText:"Username",
                labelText: 'Name',
              hintStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
                   validator: (value){
                  if(value == null || value.isEmpty){
                    return 'user is required';
                  }
                  else if(value.length<=3){
                      return 'minimum 3 characters are required';
                  } else {
                    return null;
                  }
                   },
            ),
                  SizedBox(height: 10,),
                  TextFormField(
                    obscureText: true ,
            decoration: InputDecoration(
              hintText: "Password",
              labelText: 'Password',
              hintStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
                    validator: (value){
                      if(value==null ||value.isEmpty){
                        return 'required value';
                      }else if(value.length<=3){
                        return 'minimum required value is more than 3';
                      }else{
                        return null;
                      }
                    },
                  ),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: (){
                  if(_formKey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('login successful')));
                  }
                },
                    style:ElevatedButton.styleFrom(

                  minimumSize: Size(200,43),
                      backgroundColor: Colors.red,
                ),
                child: Text('Login',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,color: Colors.white


                ),)),
                ElevatedButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>CounterApp(name : 'Meghana',age:24)) );
                }, child: Text('nextpage'))

              ],
            ),
          ),
        ),
      ),
    );
  }
}