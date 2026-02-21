
import 'package:flutter/material.dart';

class UserNameAndBio extends StatelessWidget {
  const UserNameAndBio({super.key, required this.userName, required this.bio});

  final String userName, bio;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            userName,
            style: Theme.of(context).textTheme.headlineMedium,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),

          Text(bio, style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}

