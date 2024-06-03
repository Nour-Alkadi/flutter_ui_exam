import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ui_exam/model/data_model.dart';
import 'package:flutter_ui_exam/service/data_service.dart';

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
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                         Row(
                           children: [
                             Text('Remeber me' , style: TextStyle(color: Colors.white)),
                                  SizedBox(width: 20),
                           ],
                         ),
                    Container(
                          width: 324,
                          height: 50.0,
                          child: ElevatedButton(
                            onPressed: () {
                              if (emailController.text == 'nour' &&
                                  passwordController.text == 'nour') {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChatPage()),
                                );
                              } else {
                                // Show an error message (optional)
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text('Wrong email or password')),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom( backgroundColor: Color.fromARGB(255, 93, 208, 100),
                              ),
                            child: Text( 'SignIn',
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                      SizedBox(height: 10),
                      
                  
                    ],
                  )),
        ));
  }
}

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill,
              ),
            ),
     
            child:FutureBuilder <List<DataModel>>(
          future:dataSerivceImpl().getAllData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder( itemCount: snapshot.data!.length , itemBuilder: (context, index) =>Text("${snapshot.data![index].message}"));
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),




     ) );
  }

}