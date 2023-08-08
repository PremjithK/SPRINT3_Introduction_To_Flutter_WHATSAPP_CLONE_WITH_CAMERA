import 'package:flutter/material.dart';
import 'package:whatsapp/models/single_chat_model.dart';
import 'package:whatsapp/ui/widgets/utilities_widget.dart';

class ChatBubble extends StatelessWidget {
  ChatBubble({super.key, required this.messageList});
  SingleChat messageList;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:
          (messageList.isSent) ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 150),
        child: Card(
          color: (messageList.isSent) ? Colors.teal[700] : Colors.white,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 5, left: 5, right: 45, bottom: 15),
                child: Text(messageList.message,
                    style: TextStyle(
                        color: (messageList.isSent)
                            ? Colors.white
                            : Colors.black)),
              ),
              Positioned(
                top: 20,
                right: 4,
                child: Row(
                  children: [
                    Text(
                      messageList.sentAt,
                      style: TextStyle(
                          fontSize: 10,
                          color: (messageList.isSent)
                              ? Colors.white
                              : Colors.black),
                    ),
                    UtilityWidget().widthSpace(2),
                    (messageList.isSent)
                        ? Icon(
                            Icons.done_all,
                            size: 15,
                            color: (messageList.isRead)
                                ? Colors.blue[300]
                                : Colors.grey,
                          )
                        : Container()
                  ],
                )),
            ],
          ),
        ),
      ),
    );
  }
}
