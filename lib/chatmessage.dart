import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({super.key, required this.text, required this.sender});

  final String text;
  final String sender;

  // @override
  // Widget build(BuildContext context) {
  //   return Row(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text(sender)
  //           .text
  //           .subtitle2(context)
  //           .make()
  //           .box
  //           .color(sender == "user" ? Vx.red100 : Vx.green200)
  //           .p16
  //           .roundedFull
  //           .alignCenter
  //           .makeCentered(),
  //       Expanded(
  //         child: text.trim().text.bodyText1(context).make().px8(),
  //       ),
  //     ],
  //   ).py8();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Row(
        crossAxisAlignment: sender == "user"
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            width: 28,
            height: 28,
            child: Image.asset(
              sender == "user"
                  ? 'assets/images/user.png'
                  : 'assets/images/bot.png',
              width: 28,
              height: 28,
            ),
          ),
          Expanded(
            child: sender == "user"
                ? text.trim().text.bodyText1(context).make().px8()
                : Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.blue.shade500,
                            offset: const Offset(-2, 2))
                      ],
                      color: Colors.grey[50],
                    ),
                    child: text.trim().text.bodyText2(context).make().px8()),
          ),
        ],
      ),
    );
  }
}
