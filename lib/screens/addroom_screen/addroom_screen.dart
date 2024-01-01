import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:spent_time/core/color.dart';
import 'package:spent_time/core/constants.dart';
import 'package:spent_time/screens/addroom_screen/widgets/addroom_textfeild.dart';
import 'package:spent_time/screens/addroom_screen/widgets/adress_textfeild_widget.dart';
import 'package:spent_time/screens/addroom_screen/widgets/check_box_widget.dart';
import 'package:spent_time/screens/login%20and%20singup/singup/widgets/textformfild.dart';

class AddRooms extends StatelessWidget {
  AddRooms({super.key});
  bool istrue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
          automaticallyImplyLeading:false,
        title: const Text(
          'ADD ROOM',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 124, 2, 26),
      ),
      body: Column(
        children: [
          ClipPath(
            clipper: WaveClipperOne(),
            child: Container(
              height: 50,
              color: const Color.fromARGB(255, 124, 2, 26),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.transparent,
                    ),
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 10,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                image: AssetImage('lib/assets/klglff.jpg'),
                                fit: BoxFit.cover,
                              )),
                          child: const ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Hight30,
                Row(
                  children: [
                    AddRoomTextfFeld(textfieldtitle: 'Name', hintText: 'Enter propary name',),
                   AddRoomTextfFeld(textfieldtitle: 'Price', hintText: 'Enter Room rate',),
                  ],
                ),
                Hight20,
                Row(
                  children: [
                    AddRoomTextfFeld(textfieldtitle: 'City', hintText: 'Enter Your city',),
                   AddRoomTextfFeld(textfieldtitle: 'State', hintText: 'Enter your state',),
                   
                  ],
                ),
                Hight10,
                Row(
                  children: [

                  AddRoomTextfFeld(textfieldtitle: 'Pincode', hintText: 'Enter your pincode',),
                   AddRoomTextfFeld(textfieldtitle: 'Room categary', hintText: 'Enter types room',),
                  ],
                ),
               AdressTextField(fieldText: 'Proparty Adress',hintText: 'Enter your adreess',),
                Hight10,
                Row(
                  children: [
              MyCheckBoxWidget(istrue: istrue, checkBoxTitle: 'Swiming pool',),
                    Width20,
                MyCheckBoxWidget(istrue: istrue, checkBoxTitle: 'Food',),
                    Width30,
              MyCheckBoxWidget(istrue: istrue, checkBoxTitle: 'Wifi',),

                    Width10,
                  ],
                ),
                Hight10,
                Row(
                  children: [
               
                    MyCheckBoxWidget(istrue: istrue, checkBoxTitle: 'power Backup',),
                    Width10,
                MyCheckBoxWidget(istrue: istrue, checkBoxTitle: 'Parking',),
                    Width20,
              MyCheckBoxWidget(istrue: istrue, checkBoxTitle:  'Tv',),
                  ],
                ),
                Hight10,
                Row(
                  children: [
                   
                    MyCheckBoxWidget(istrue: istrue, checkBoxTitle: 'Meeting Room',),
                    Width10,
                  MyCheckBoxWidget(istrue: istrue, checkBoxTitle: 'Heater',),
                    Width20,
                 MyCheckBoxWidget(istrue: istrue, checkBoxTitle:  'Ac',),
                  
                  ],
                ),
                Hight10,
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Description',
                    style: TextStyle(
                      color: Color.fromARGB(255, 200, 195, 195),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    // controller: clientController.emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Add description',
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 133, 133, 133),
                        height: 5,
                      ),
                    ),
                  ),
                ),
                Hight20,
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
                Hight10,
                Padding(
                  padding: const EdgeInsets.only(left: 110, right: 110),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 171, 169, 169),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}





