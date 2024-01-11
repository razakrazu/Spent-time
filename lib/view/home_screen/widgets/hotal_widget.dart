import 'package:flutter/material.dart';

class HotalsWidgets extends StatelessWidget {
  const HotalsWidgets({
    super.key, this.hotalname, this.hotalplace,
  });
final hotalname;
final hotalplace;
// final hotalPhotos;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 170,
      margin:
          const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        image: const DecorationImage(
            image:
                AssetImage('lib/assets/klglff.jpg'),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(20),
      ),
      child:  Padding(
        padding: EdgeInsets.only(top: 140, left: 10),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            Text(
              'Hotal:${hotalname}',
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
     const       SizedBox(
              width: 10,
            ),
            Text(
              'Place:${hotalplace}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
