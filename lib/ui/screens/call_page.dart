import 'package:flutter/material.dart';
import 'package:whatsapp/models/call_list_model';
import 'package:whatsapp/ui/screens/call_tile.dart';

class CallPage extends StatelessWidget {
  CallPage({super.key});

  List<Call> callList = [
    Call(
        name: 'George',
        avatar:
            'https://static.vecteezy.com/system/resources/previews/002/002/403/original/man-with-beard-avatar-character-isolated-icon-free-vector.jpg',
        isMissedCall: false,
        date: 'Today',
        time: '11:00am'),
    Call(
        name: 'Michael',
        avatar: '',
        isMissedCall: false,
        date: 'Yesterday',
        time: '11:00am'),
    Call(
        name: 'Amal',
        avatar: '',
        isMissedCall: true,
        date: 'July 20',
        time: '12:00pm'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: ListView.builder(
          itemCount: callList.length,
          itemBuilder: (context, index) {
            return CallTile(call: callList[index]);
          },
        ),
      ),
    );
  }
}
