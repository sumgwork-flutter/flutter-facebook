import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/widgets/widgets.dart';
import 'package:flutter_facebook_responsive_ui/models/models.dart';

class ContactsList extends StatelessWidget {
  final List<User> contacts;

  ContactsList({@required this.contacts});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 280.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Contacts',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.grey[600],
              ),
              SizedBox(
                width: 8.0,
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.grey[600],
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                itemCount: contacts.length,
                itemBuilder: (BuildContext context, int index) {
                  final User user = contacts[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: UserCard(user: user),
                  );
                }),
          )
        ],
      ),
    );
  }
}
