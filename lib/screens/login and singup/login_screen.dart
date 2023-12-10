
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:spent_time/screens/login%20and%20singup/singup/singup_screen.dart';


class Login_Screen extends StatelessWidget {
  const Login_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: const Color.fromARGB(255, 101, 101, 101),
      body: 
      //  Obx(() {  return
          Container(
        
          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //       image: AssetImage('lib/assets/fkljk.jpg'), fit: BoxFit.cover),
          // ),
          
          child: Padding(
            padding: const EdgeInsets.only(),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 150),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 113, 109, 109)),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    height: 500,
                    width: 500,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 70,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(90),
                              ),
                              hintText: 'Email',
                              hintStyle: const TextStyle(
                                color: Colors.white,
                              ),
                              prefixIcon: const Icon(Icons.mail_outline,color: Color.fromARGB(255, 200, 200, 200),),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              
                              border: OutlineInputBorder(
                                borderSide:const BorderSide(color:  Colors.white),
                                borderRadius: BorderRadius.circular(90),
                              ),
                              hintText: 'Password',
                              hintStyle: const TextStyle(
                                color: Colors.white,
                              ),
                                  prefixIcon: const Icon(Icons.lock_outlined,color: Color.fromARGB(255, 200, 200, 200),),

                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 200),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text('forgot password',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 80,
                            right: 80,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                             
                            },
                            child: Text(
                              'Log In',
                              style:const TextStyle(color: Colors.white),
                              
                            ) ,
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 76, 73, 73),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: TextButton(
                            onPressed: () {
                               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Singup_Screen()),
            );
                            },
                            child: const Text('Create New Account',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
          ),
      // }),
    );
  }
}



