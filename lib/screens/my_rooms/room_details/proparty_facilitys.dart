import 'package:flutter/material.dart';
import 'package:spent_time/screens/my_rooms/room_details/widgets/roomdetailsicons.dart';
import 'package:spent_time/screens/my_rooms/room_details/widgets/textfeilds.dart';

class PropartyFacilitesScreen extends StatelessWidget {
  const PropartyFacilitesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
MainTitile(label: 'Food and Tea'),
RoomFutureIconWidgets(futureicon: Icons.dinner_dining, futuretext: 'coffee/tea/Food')

        ],
      ),
    );
}
}