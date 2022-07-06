import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.red,
                ),
              ),
             const Divider(
                color: Colors.black87,
                thickness: 3.0,
              ),
             Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const[
                  Text(
                    'Name:',
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                   Text(
                    'Erastus Munyao',
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:const [
                  Text(
                    'Age:',
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                  Text(
                    '18',
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ],
              ),
             const Divider(
                color: Colors.black87,
                thickness: 3.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:const [
                  Text(
                    'School:',
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                  Text(
                    'Flutter',
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:const [
                  Text(
                    'ID:',
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                  Text(
                    '1029',
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ],
              ),
               const Divider(
                color: Colors.black87,
                thickness: 3.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const[
                  Icon(Icons.email,size: 35),
                  Icon(Icons.person_add,size: 35),
                  Icon(Icons.notification_add,size: 35),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


