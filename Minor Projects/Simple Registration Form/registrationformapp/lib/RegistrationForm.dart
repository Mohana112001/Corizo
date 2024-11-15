import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  bool showPassword = true;
  late String emailaddress,password;
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        centerTitle: true,
        title: Text("REGISTRATION FORM",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      backgroundColor: Colors.blue[200],
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(      
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const Text("Email Address",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
           const  SizedBox(height: 10,),
            TextField(
            onChanged: (value) {
              emailaddress = value ;
             },
              decoration:const InputDecoration(
                hintText:"Please enter your email address",
                border:OutlineInputBorder(),
              ),
            ),
           const SizedBox(height: 15,),
            const Text("Password",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),
            TextField(
              onChanged: (value) {
              password = value ;
             },
              obscureText: showPassword,
              decoration: InputDecoration(
                hintText: "Please enter your email Password",
                border: OutlineInputBorder(),
                suffixIcon: GestureDetector(
                  onTap:(){
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                  child: showPassword?Icon(Icons.visibility_off):Icon(Icons.visibility)),
              ),
            ),
           const SizedBox(height: 10,),
            Center(
              child: RawMaterialButton(
                shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(10)) ,               
                fillColor: Colors.white,
                onPressed:()async{
              try{
            await auth.createUserWithEmailAndPassword(email: emailaddress, password: password);
            }catch(error){
              Fluttertoast.showToast(msg: error.toString());
            }
                      
              },child: const Text("Register",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),),
            )
          ],
        ),
      ),
    );
  }
}