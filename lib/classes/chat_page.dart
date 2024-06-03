
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ui_exam/classes/invitefriends_page.dart';
import 'package:flutter_ui_exam/model/people_model.dart';
import 'package:flutter_ui_exam/service/people_service.dart';




//class ChatPage extends StatelessWidget {
 // @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//body: Container(
   //         width: MediaQuery.of(context).size.width,
     //       height: MediaQuery.of(context).size.height,
      //      decoration: BoxDecoration(
       //       image: DecorationImage(
       //         image: AssetImage('assets/images/background.png'),
//fit: BoxFit.fill,
      //        ),
     ///       ),
     
    
  //  ) );
 // }

//}

TextEditingController chat = TextEditingController();


class chatPage extends StatelessWidget {
  const chatPage({super.key});

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
                             children: [Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,) , SizedBox(width: 23,)  
                 ,            InkWell(
                               onTap: () {
                                      Navigator.push( context,
                                  MaterialPageRoute(
                                      builder: (context) => inviteFriendsPage()),
                                );

                               },
                  child: Container(child: Text("Invite Friends",style:TextStyle(color: Colors.white)))),SizedBox(width: 23,) ,
                                Icon(Icons.delete,color: Colors.white,),
                           ]
            
                           ),),
                      
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                  height: 45,
                   child: TextField(
                                 controller: chat,
                                 onChanged: (value) {
       },
                                 decoration: InputDecoration(
                    
                      hintText: "Search Here",
                      prefixIcon: Icon(Icons.search,color: Colors.white,),
                suffix: Icon(Icons.keyboard_voice_outlined,color: Colors.grey,),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                               ),
                 ),
               ),
            Expanded(
              child: FutureBuilder(
                future :  getpeopleData(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return  ListView.builder(
                // scrollDirection: Axis.horizontal,
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) => 
                ListTile(
                  title: Row(
                    children: [
                      Text(
                          "${snapshot.data![index].name}" , style: TextStyle(color: Colors.white),
                        ),
                         Text(
                          "${snapshot.data![index].unread_message_count}" ,style: TextStyle(color: const Color.fromARGB(255, 64, 166, 68)),
                        ),
                        
                    ],
                  ),
                   trailing: Text(
                      "${snapshot.data![index].date}",
                    ),
                      subtitle: Text(
                      "${snapshot.data![index].message}",
                      
                    ),
                   leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(snapshot.data![index].image),
              ),
                    ),
              );
                   
                    
                  } else {
                    return CircularProgressIndicator(
                      strokeWidth: 1,
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}
