import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   State<Home> createState() => _HomeState();
//  }
//
//  class _HomeState extends State<Home> {
//
//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        backgroundColor: Colors.blueGrey,
//        appBar: AppBar(
//          title: const Text(
//              'FLUTTER ID',
//            style: TextStyle(
//              fontSize: 28.0,
//              fontWeight: FontWeight.bold,
//            ),
//          ),
//          backgroundColor: Colors.green,
//          centerTitle: true,
//        ),
//
// //       body: SafeArea(
// //         child: Padding(
// //           padding: const EdgeInsets.all(8.0),
// //           child: Column(
// //             //mainAxisAlignment: MainAxisAlignment.center,
// //             crossAxisAlignment: CrossAxisAlignment.center,
// //             children: [
// //               const Center(
// //                 child: CircleAvatar(
// //                   radius: 50.0,
// //                   backgroundColor: Colors.red,
// //                 ),
// //               ),
// //              const Divider(
// //                ///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
// //                 color: Colors.white,
// //                 thickness: 3.0,
// //               ),
// //              Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: const[
// //                   Text(
// //                     'Name:',
// //                     style: TextStyle(
// //                       fontSize: 25.0,
// //                     ),
// //                   ),
// //                    Text(
// //                     'Erastus Munyao',
// //                     style: TextStyle(
// //                       fontSize: 25.0,
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children:const [
// //                   Text(
// //                     'Age:',
// //                     style: TextStyle(
// //                       fontSize: 25.0,
// //                     ),
// //                   ),
// //                   Text(
// //                     '18',
// //                     style: TextStyle(
// //                       fontSize: 25.0,
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //              const Divider(
// //                 color: Colors.white,
// //                 thickness: 3.0,
// //               ),
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children:const [
// //                   Text(
// //                     'School:',
// //                     style: TextStyle(
// //                       fontSize: 25.0,
// //                     ),
// //                   ),
// //                   Text(
// //                     'Flutter',
// //                     style: TextStyle(
// //                       fontSize: 25.0,
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children:const [
// //                   Text(
// //                     'ID:',
// //                     style: TextStyle(
// //                       fontSize: 25.0,
// //                     ),
// //                   ),
// //                   Text(
// //                     '1029',
// //                     style: TextStyle(
// //                       fontSize: 25.0,
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //                const Divider(
// //                 color: Colors.white,
// //                 thickness: 3.0,
// //               ),
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //                 children: const[
// //                   Icon(Icons.email,size: 35),
// //                   Icon(Icons.person_add,size: 35),
// //                   Icon(Icons.notification_add,size: 35),
// //                 ],
// //               ),
// //
// //               const Divider(
// //                 color: Colors.white,
// //                 thickness: 4.5,
// //               ),
// //
// //             ],
// //           ),
// //         ),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: () {},
// //         child: Text('click'),
// //         backgroundColor: Colors.red,
// //       ),
//      );
//   }
//   Widget showText(String text) {
//      return Text(
//          text,
//        style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 28.0),
//     );
//    }
//
// }
//
// ,
// ));
// }
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: showText('FLUTTER ID', Colors.white),
        //backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            cardInformation(),
            showDivider(),
            rowText("stack","Flutter"),
            rowText("id","1029/2021"),
            showDivider(),
            rowIcon(Icons.person_sharp,"Google"),
            Space(),
            rowIcon(Icons.notification_add,"Facebook"),
            Space(),
            rowIcon(Icons.local_airport,"Github"),
          ],
        ),
      ),
    );
  }
  Widget showText(String text,Color choice){
    return Text(
      text,
      style: TextStyle(
        fontSize: 22,fontWeight: FontWeight.bold,color: choice,
      ),
    );
  }
  Widget cardInformation(){
    return Row(
      children: [
        const CircleAvatar(
         backgroundColor: Colors.red,
          radius: 50,
        ),
        const SizedBox(
          width: 5,
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          showText("Erastus Munyao",Colors.black),
          showText("erastusmunya2022@gmail.com",Colors.blue),

        ],
        ),
      ],
    );
  }
  Widget rowText(String text_1,String text_2){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        showText(text_1, Colors.blue),
        const SizedBox(width: 7,),
        showText(":",Colors.black),
        const SizedBox(width: 7,),
        showText(text_2, Colors.black),

      ],
    );
  }
  Widget rowIcon(IconData icon,String text_2){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon),
        const SizedBox(width: 7,),
        showText(":",Colors.black),
        const SizedBox(width: 7,),
        showText(text_2, Colors.black),

      ],
    );
  }
  Widget showDivider(){
    return const Divider(
      thickness: 1,
color:Colors.black,
      height: 40,
    );
  }
  Widget Space(){
    return const SizedBox(height: 6,);
  }
}
