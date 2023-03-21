import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/detail/list_test.dart';

class UserPage extends StatelessWidget {
  final User user;

  const UserPage({Key? key, required this.user}) : super(key: key);

  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          user.name,
          textAlign: TextAlign.center,
        )),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            user.urlAvatar,
                            height: 400,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 15),
                          Text(user.name,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(height: 10),
                          Text(user.namerubber),
                          Text(user.boxname),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}







//     return Scaffold(
//     appBar:AppBar(
//       title: Text(user.name,textAlign: TextAlign.center,),
//     ),
//     body:Column(
//       children: [
//         Center(child: Column(
//           children: [
//             Column
//             (children: <Widget>[
              

        
// // Image.network(
// //   user.urlAvatar,
// //   height: 400,
// //   width: double.infinity,
// //   fit: BoxFit.cover,
// // ),
// // SizedBox(height:20),
// // Text(user.name,
// // style:TextStyle(fontSize:30,
// // fontWeight:FontWeight.bold,
// // )),
// // SizedBox(height:20),
// // Text(user.namerubber),
// // Text(user.boxname)
// // Image.network(user.urlAvatar,)


//             ]
//             ),
//           ],
//         ) ,
//         ),
//       ],
//     )
//     );
// }
// 