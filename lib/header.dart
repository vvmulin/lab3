import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header(this._profilePhotoID, {super.key});

  final String _profilePhotoID;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.close, color: Theme.of(context).primaryColor,),
                  onPressed: () {/*CLOSE*/},
                ),
                const Spacer(),
                IconButton(
                  icon: Icon(Icons.logout, color: Theme.of(context).primaryColor,),
                  onPressed: () {/*LOGOUT*/},
                ),
              ]
            ),
            Image.asset(
              _profilePhotoID,
              width: 140.0,
              height: 140.0,
            ),
        ],
    );
  }
}