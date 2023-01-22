import 'package:flutter/material.dart';

class CardEntry extends StatelessWidget {
  const CardEntry({
    Key? key,
    required this.title,
    required this.loc,
  }) : super(key: key);

  final String title;
  // ignore: type_annotate_public_apis, prefer_typing_uninitialized_variables
  final loc;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '$title:  ',
        style: const TextStyle().copyWith(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        children: <TextSpan>[
          TextSpan(
              text: '${loc ?? 'no data'}',
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
              )),
        ],
      ),
    );
  }
}
