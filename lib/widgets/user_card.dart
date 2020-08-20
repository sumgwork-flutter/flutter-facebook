import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/models/models.dart';
import 'package:flutter_facebook_responsive_ui/widgets/widgets.dart';

class UserCard extends StatelessWidget {
  final User user;

  UserCard({@required this.user});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print('User Card'),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProfileAvatar(
            imageUrl: user.imageUrl,
          ),
          SizedBox(
            width: 6.0,
          ),
          Text(
            user.name,
            style: TextStyle(fontSize: 16.0),
          )
        ],
      ),
    );
  }
}
