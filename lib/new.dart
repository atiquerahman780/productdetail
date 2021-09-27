import 'package:flutter/material.dart';

enum SingingCharacter { Small, Large }

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  SingingCharacter? _character = SingingCharacter.Small;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Small'),
          subtitle: Row(
            children: [
              Row(
                children: [
                  Text(
                    "Rs. 3050",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 13,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.red,
                      decorationThickness: 2,
                      decorationStyle: TextDecorationStyle.dashed,
                    ),
                  ),
                  Text(
                    "  Rs. 2400",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              )
            ],
          ),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.Small,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
                print(_character);
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Large'),
          subtitle: Row(
            children: [
              Row(
                children: [
                  Text(
                    "Rs. 3050",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 13,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.red,
                      decorationThickness: 2,
                      decorationStyle: TextDecorationStyle.dashed,
                    ),
                  ),
                  Text(
                    "  Rs. 2400",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              )
            ],
          ),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.Large,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
                print(_character);
              });
            },
          ),
        ),
      ],
    );
  }
}
