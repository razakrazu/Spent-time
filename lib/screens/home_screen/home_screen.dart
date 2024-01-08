import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:spent_time/core/constants.dart';
import 'package:spent_time/screens/home_screen/widgets/hotal_widget.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    
       automaticallyImplyLeading:false,
        title: const Text(
          'HOME',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 124, 2, 26),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: SafeArea(
        child: Column(
          children: [
            ClipPath(
              clipper: WaveClipperOne(),
              child: Container(
                height: 50,
                color: const Color.fromARGB(255, 124, 2, 26),
              ),
            ),

           
            Expanded(
              child: Center(
                child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    physics: const PageScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 15,
                              ),
                              child: Text(
                                'Normal Rooms',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Width10,
                              HotalsWidgets(hotalname: 'Dream Villa',hotalplace: 'calicut',),
                              Width10,
                         HotalsWidgets(hotalname: 'Dream Villa',hotalplace: 'calicut',),

                            ],
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 1,
                      );
                    }),
              ),
            ),

            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

