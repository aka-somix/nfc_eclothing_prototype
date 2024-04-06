import 'package:flutter/material.dart';

class UserView extends StatelessWidget {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("P R O F I L E"), centerTitle: true,),
      body: ListView(
        children: [
          const Card.filled(
            color: Color.fromARGB(255, 15, 77, 70),
            margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
            child: SizedBox(
              height: 200,
              child: Center(
                child: ListTile(
                  title: Text("Welcome User"),
                  subtitle: Text("Have fun configuring your personalized e-clothes"),
                )
              )
            ),
          ),
          Card(
            surfaceTintColor: Colors.amber,
            clipBehavior: Clip.hardEdge,
            elevation: 10,
            margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/wardrobe');
              },
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.meeting_room_rounded),
                    iconColor: Colors.orange,
                    title: Text('Wardrobe'),
                    subtitle: Text('Search through your e-clothes'),
                  ),
                ]
              ),
            )
          )
        ],
      )
    );
  }
}
