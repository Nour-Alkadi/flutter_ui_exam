// class/thirdui.dart
import 'package:flutter/material.dart';
import 'package:flutter_ui_exam/classes/chat_page.dart';


TextEditingController username = TextEditingController();

class inviteFriendsPage extends StatelessWidget {
  const inviteFriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body:Container(
        color: Colors.black,
        child: Column(
          children: [
               Container(
                           width: double.maxFinite,
                           height: 150,
                           color: Colors.black45,
                           child: Row(  mainAxisAlignment: MainAxisAlignment.center,
                             children: [InkWell(
                              onTap: () {
                                      Navigator.push( context,
                                  MaterialPageRoute(
                                      builder: (context) => chatPage()),
                                );

                               },
                              
                              
                              child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,)) ,
                             
                             
                              SizedBox(width: 23,)  ,
  
                               
                 Container(child: Text("Invite Friends",style:TextStyle(color: Colors.white))),
                  SizedBox(width: 23,) ,
                                Icon(Icons.delete,color: Colors.white,),
                           ]
            
                           ),
                       
                         ),
              
              Container(
                          width: double.maxFinite,
                          height: 200,
                          alignment: Alignment.topCenter,
                         
                          decoration: BoxDecoration(
                image: DecorationImage(
                    image: Image.asset(
              'assets/images/Artwork.png',
              fit: BoxFit.fitWidth,
                          ).image)),
                        ),

                           Padding(
              padding: const EdgeInsets.only(left: 8 ,right: 8, top:20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Align(alignment: Alignment.centerLeft, child: Text("P A S S W O R D",)),
                  ),
                  SizedBox(
                    height: 45,
                    child: TextField(
                      controller: username,
                      decoration: InputDecoration(
                        hintText: "Share your invite code",

                          filled: true,
                        border: OutlineInputBorder(
                        
                          borderRadius: BorderRadius.circular(10),
                        
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          
            InkWell(
                      onTap: () async {
                      
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8 ,right: 8, top:20.0),
                        child: Container(
                          alignment: Alignment.center,
                          
                          height: 45,
                          decoration:  BoxDecoration(
                          color: Colors.green,
                        
                          borderRadius: BorderRadius.circular(10),
                        
                        
                                 
                          ),
                          child: Text("invite Friends",style:TextStyle(color: Colors.white),),
                        ),
                      )
                      ),
          ],
        ),
      ),
       
     
    );
  }
}


PageController pageController = PageController();
