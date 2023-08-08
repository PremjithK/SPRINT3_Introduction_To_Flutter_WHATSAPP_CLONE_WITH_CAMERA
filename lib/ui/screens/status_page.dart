import 'package:flutter/material.dart';
import 'package:whatsapp/models/status_model.dart';
import 'package:whatsapp/ui/screens/status_tile.dart';

class StatusPage extends StatelessWidget {
  StatusPage({super.key});

  List<Status> statusList = [
    Status(name: "John", avatar: "", statusTime: "Today, 10:00am"),
    Status(
        name: "George",
        avatar:
            "https://static.vecteezy.com/system/resources/previews/002/002/403/original/man-with-beard-avatar-character-isolated-icon-free-vector.jpg",
        statusTime: "Yesterday, 12:00pm"),
    Status(name: "Steve", avatar: "", statusTime: "Yesterday, 08:00am"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: ListView.builder(
          itemCount: statusList.length,
          itemBuilder: (context, index) {
            return StatusTile(status: statusList[index]);
          },
        ),
      ),
    );
  }
}
