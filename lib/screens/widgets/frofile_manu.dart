import 'package:flutter/material.dart';
import 'package:spent_time/core/color.dart';
import 'package:spent_time/screens/my_rooms/room_details/widgets/textfeilds.dart';

class ProfileManuWidget extends StatelessWidget {
  const ProfileManuWidget({
    super.key,
    this.profileIcon,
    this.profileTitle,
    this.OnTap,
  });
  final profileIcon;
  final profileTitle;
  final OnTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 5,top: 5),
      child: ListTile(
        onTap: () {},
        leading: Container(
          width: 44,
          height: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: WhiteColor.withOpacity(0.2)),
          child: Icon(
            profileIcon,
            color: WhiteColor,
          ),
        ),
        title: MainTitile(label: profileTitle),
        trailing: Container(
          width: 33,
          height: 33,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: WhiteColor.withOpacity(0.2)),
          child: Icon(
            Icons.arrow_forward_ios_outlined,
            color: WhiteColor,
          ),
        ),
      ),
    );
  }
}
