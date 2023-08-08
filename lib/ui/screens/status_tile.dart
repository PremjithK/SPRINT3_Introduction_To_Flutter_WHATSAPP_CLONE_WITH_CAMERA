import 'package:flutter/material.dart';
import 'package:whatsapp/models/status_model.dart';

class StatusTile extends StatelessWidget {
  StatusTile({Key? key, required this.status}) : super(key: key);

  Status status;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: (status.avatar != '')
            ? NetworkImage(status.avatar)
            : NetworkImage(
                "https://cdn-icons-png.flaticon.com/512/6596/6596121.png"),
      ),
      title: Text(
        status.name,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        status.statusTime,
        style: TextStyle(fontSize: 12),
      ),
    );
  }
}
