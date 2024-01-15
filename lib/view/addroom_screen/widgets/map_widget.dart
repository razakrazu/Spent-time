import 'package:flutter/material.dart';
import 'package:spent_time/core/color.dart';

class AddRoomMapWidget extends StatelessWidget {
  const AddRoomMapWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const Padding(
      padding: EdgeInsets.only(left: 10),
      child: Text(
        'Map',
        style: TextStyle(
          color: Color.fromARGB(255, 200, 195, 195),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 170,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: WhiteColor),
          borderRadius: BorderRadius.circular(10),
        
            image: const DecorationImage(
                    image: AssetImage('lib/assets/hkejkfk.png'),
                    fit: BoxFit.cover,
                  )
        ),
      ),
    ),
    ],);
  }
}