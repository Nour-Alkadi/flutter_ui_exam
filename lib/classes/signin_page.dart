
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ui_exam/classes/chat_page.dart';
import 'package:flutter_ui_exam/model/people_model.dart';
import 'package:flutter_ui_exam/service/people_service.dart';

PageController onBoardingContoller = PageController();
final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();


class SignInPage extends StatelessWidget {
  const SignInPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: Center(
          child: Container(
              width: 800,
              height:800,
                /// color: Color(000000),
                  child: Column(
                   // crossAxisAlignment: CrossAxisAlignment.,
                    children: [
                      SizedBox(height: 50),
                      Row( mainAxisAlignment: MainAxisAlignment.center,
                        children: [ 
                        Text("R" , style: TextStyle(fontSize: 40 , color: Colors.white),) , 
                       Text("ii" , style: TextStyle(fontSize: 40 , color: Colors.green),) , 
                         Text("DE" , style: TextStyle(fontSize: 40 , color: Colors.white),) ],),
                         SizedBox(height: 50),
                      Text('Welcom to RIIDE', style: TextStyle(fontSize: 25 , color: Colors.white)),
                      // SizedBox(height: 10),
                      //Text('Email'),
                      SizedBox(height: 20),
                      Text('USERNAME' , style: TextStyle(color: Colors.white)),
                       Container( height: 50, width: 324,                 
                               child: TextField( 
                              controller: emailController,
                  
                              decoration: InputDecoration( border:OutlineInputBorder(),
                                hintText: 'Enter email or username'),
                                               ),
                       ),
                      SizedBox(height: 10),
                       Text('PASSWORD' , style: TextStyle(color: Colors.white)),
                      Container(  height: 50, width: 324, decoration: BoxDecoration(borderRadius:BorderRadius.circular(15) ),
                        child: TextField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(border:OutlineInputBorder() , hintText: 'Enter your Password'),
                        ),
                      ),
                      SizedBox(height: 20),
                         Row(  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             Text('Remeber me' , style: TextStyle(color: Colors.white)),
                          
                                  Text('forget Password' , style: TextStyle(color: Colors.blue))
                           ],
                         ),
                                 SizedBox(height: 20),
                    InkWell(    child:  Container( height: 50, width: 324,
                       color: Colors.green,
                      child:Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text('Sign In'),
                      )),onTap:  () { if (emailController.text == 'nour') {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => chatPage()),
                                  );
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text('Wrong email or password')),
                                  );
                               
                              }
                    }
                     
                    ),
  
                             ]   ),
                     
                            ),
                    ));
                    
                      
          
  }
}