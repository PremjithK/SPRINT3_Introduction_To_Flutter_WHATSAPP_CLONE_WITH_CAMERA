import 'package:flutter/material.dart';
import 'package:whatsapp/models/call_list_model';
import 'package:whatsapp/ui/widgets/utilities_widget.dart';

class CallTile extends StatelessWidget {
  CallTile({super.key, required this.call});
  Call call;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundImage: (call.avatar != '')
            ? NetworkImage(
                call.avatar,
              )
            : NetworkImage(
                "https://cdn-icons-png.flaticon.com/512/6596/6596121.png",
              ),
      ),
      title: Text(
        call.name,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          (call.isMissedCall)
              ? Icon(
                  Icons.call_received_outlined,
                  color: Colors.red,
                  size: 18,
                )
              : Icon(
                  Icons.call_made_outlined,
                  color: Colors.green,
                  size: 18,
                ),
          UtilityWidget().widthSpace(5),
          Text(call.date + ', ', style: TextStyle(fontSize: 12)),
          Text(call.time, style: TextStyle(fontSize: 12)),
        ],
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.phone,
            color: Colors.teal,
          )),
    );
  }
}
