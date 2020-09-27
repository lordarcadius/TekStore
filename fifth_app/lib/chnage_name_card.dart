import 'package:flutter/material.dart';

import 'bg_image.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key key,
    @required this.textValue,
    @required TextEditingController nameController,
  }) : _nameController = nameController, super(key: key);

  final String textValue;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BgImage(),
        SizedBox(
          height: 20,
        ),
        Text(
          textValue,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: _nameController,
            decoration: InputDecoration(
              hintText: "Write something here.",
              labelText: "Name",
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.text,
          ),
        )
      ],
    );
  }
}
