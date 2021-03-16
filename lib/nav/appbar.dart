import 'package:calc_challenge/screens/history.dart';
import 'package:flutter/material.dart';

class CustomNav extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Calculator'),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 25.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => history()));
            },
            child: Icon(
              Icons.history,
              size: 30,
            ),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(40.0);
}
