
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:virtual_swaahth/login_screen.dart';
import 'package:virtual_swaahth/navbar_roots.dart';

import '../signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            // SizedBox(height: 10),  // for skip button
            // Align(
            //   alignment: Alignment.centerRight,
            //   child: TextButton(
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => NavBarRoots(),
            //         ),
            //       );
            //     },
            //     child: Text(
            //       "SKIP",
            //       style: TextStyle(
            //         color: Colors.purple.shade700,
            //         fontSize: 20,
            //       ),
            //     ),
            //   ),
            // ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(10),
              child: Lottie.network('https://lottie.host/fa066139-7463-42d4-b91e-61574e3bfcff/u28BfI4SJn.json'),


            ),
            SizedBox(height: 50),
            Text(
              "Virtual Hospital",
              style: TextStyle(
                color: Colors.purple.shade700,
                fontSize: 30,
                fontWeight: FontWeight.w700,
                letterSpacing: 1,
                wordSpacing: 1,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Apoint your Doctor",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
                wordSpacing: 1,
              ),
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Login Button
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.12),
                        blurRadius: 6,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Material(
                      color: Colors.purple.shade700,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          child: Text(
                            "Log In",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // Signup Button
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.12),
                        blurRadius: 6,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Material(
                      color: Colors.purple.shade700,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//
//
//
//
// // // import 'package:flutter/material.dart';
// // // import 'package:virtual_swaahth/login_screen.dart';
// // // import 'package:virtual_swaahth/navbar_roots.dart';
// // //
// // // import '../signup_screen.dart';
// // //
// // // class WelcomeScreen extends StatelessWidget{
// // //   @override
// // //   Widget build(BuildContext context){
// // //     return Material(
// // //       child: Container(
// // //         width: MediaQuery.of(context).size.width,
// // //         height: MediaQuery.of(context).size.height,
// // //         padding: EdgeInsets.all(10),
// // //         child: Column(
// // //           children: [
// // //             SizedBox(height: 15,),
// // //             Align(
// // //               alignment: Alignment.centerRight,
// // //               child: TextButton(
// // //                 onPressed: (){
// // //                   Navigator.push(context, MaterialPageRoute(
// // //                     builder: (context) => NavBarRoots(),
// // //                   ));
// // //                 },
// // //                 child: Text(
// // //                   "SKIP",
// // //                   style: TextStyle(
// // //                     color: Colors.purple.shade700,
// // //                     fontSize: 20,
// // //                   ),
// // //                 ),
// // //               ),
// // //             ),
// // //             SizedBox(height: 50),
// // //             Padding(
// // //               padding: EdgeInsets.all(20),
// // //               child: Image.asset("images/vir_docc.png",),
// // //             ),
// // //             SizedBox(height: 50),
// // //             Text("Virtual Hospital",
// // //               style: TextStyle(
// // //                 color: Colors.purple.shade700,
// // //                 fontSize: 30,
// // //                 fontWeight: FontWeight.w700,
// // //                 letterSpacing: 1,
// // //                 wordSpacing: 1,
// // //               ),
// // //             ),
// // //             SizedBox(height: 10),
// // //             Text("Apoint your Doctor",
// // //               style: TextStyle(
// // //                 color: Colors.black,
// // //                 fontSize: 30,
// // //                 fontWeight: FontWeight.w500,
// // //                 letterSpacing: 1,
// // //                 wordSpacing: 1,
// // //               ),
// // //             ),
// // //             SizedBox(height: 60),
// // //             Row(
// // //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// // //               children: [
// // //                 // Login Button
// // //                 ClipRRect(
// // //                   borderRadius: BorderRadius.circular(30),
// // //                   child: Material(
// // //                     color: Colors.purple.shade700,
// // //                     child: InkWell(
// // //                       onTap: (){
// // //                         Navigator.push(context, MaterialPageRoute(
// // //                             builder: (context) => LoginScreen()
// // //                         ));
// // //                       },
// // //                       child: Padding(
// // //                         padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
// // //                         child: Text(
// // //                           "Log In",
// // //                           style: TextStyle(
// // //                             color: Colors.white,
// // //                             fontSize: 22,
// // //                             fontWeight: FontWeight.bold,
// // //                           ),
// // //                         ),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 // Signup Button
// // //                 ClipRRect(
// // //                   borderRadius: BorderRadius.circular(30),
// // //                   child: Material(
// // //                     color: Colors.purple.shade700,
// // //                     child: InkWell(
// // //                       onTap: (){
// // //                         Navigator.push(context, MaterialPageRoute(
// // //                             builder: (context) => SignUpScreen()
// // //                         ));
// // //                       },
// // //                       child: Padding(
// // //                         padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
// // //                         child: Text(
// // //                           "Sign Up",
// // //                           style: TextStyle(
// // //                             color: Colors.white,
// // //                             fontSize: 22,
// // //                             fontWeight: FontWeight.bold,
// // //                           ),
// // //                         ),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // //
// // //
// // // // import 'package:flutter/material.dart';
// // // // import 'package:virtual_swaahth/login_screen.dart';
// // // // import 'package:virtual_swaahth/navbar_roots.dart';
// // // //
// // // // import '../signup_screen.dart';
// // // //
// // // // class WelcomeScreen extends StatelessWidget{
// // // //   @override
// // // //   Widget build(BuildContext context){
// // // //     return Material(
// // // //       child: Container(
// // // //         width: MediaQuery.of(context).size.width,
// // // //         height: MediaQuery.of(context).size.height,
// // // //         padding: EdgeInsets.all(10),
// // // //         child: Column(
// // // //           children: [
// // // //             SizedBox(height: 15,),
// // // //             Align(
// // // //     alignment: Alignment.centerRight,
// // // //               child: TextButton(
// // // //                 onPressed: (){
// // // //                   Navigator.push(context, MaterialPageRoute(
// // // //                   builder: (context) => NavBarRoots(),
// // // //                   ));
// // // //     },
// // // //                 child: Text(
// // // //     "SKIP",
// // // // style: TextStyle(
// // // //     color: Colors.purple.shade700,
// // // //     fontSize: 20,
// // // //     ),
// // // //     ),
// // // //
// // // //               ),
// // // //             ),
// // // //   SizedBox(height: 50),
// // // //   Padding(
// // // //   padding: EdgeInsets.all(20),
// // // //   child: Image.asset("images/vir_docc.png",),
// // // //
// // // //   ),
// // // //   SizedBox(height: 50),
// // // //   Text("Virtual Hospital",
// // // //   style: TextStyle(
// // // //   color: Colors.purple.shade700,
// // // //     fontSize: 30,
// // // //     fontWeight: FontWeight.w700,
// // // //     letterSpacing: 1,
// // // //     wordSpacing: 1,// color of above text
// // // //   ),
// // // //   ),
// // // //             SizedBox(height: 10),
// // // //             Text("Apoint your Doctor",
// // // //               style: TextStyle(
// // // //                 color: Colors.black,
// // // //                 fontSize: 30,
// // // //                 fontWeight: FontWeight.w500,
// // // //                 letterSpacing: 1,
// // // //                 wordSpacing: 1,// color of above text
// // // //               ),
// // // //             ),
// // // //             SizedBox(height: 60),
// // // //             Row(
// // // //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// // // //               children: [
// // // //
// // // //                 // code of Tap button of Login
// // // //
// // // //                 Material(
// // // //                   color: (Colors.purple.shade700),
// // // //                   child: InkWell(
// // // //                     onTap: (){
// // // //                       Navigator.push(context, MaterialPageRoute(
// // // //                       builder: (context) => LoginScreen()
// // // //                       ));
// // // //                     },
// // // //                     child: Padding(padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
// // // //                       child: Text(
// // // //                           "Log In",style: TextStyle(
// // // //                           color: Colors.white,
// // // //                           fontSize: 22,
// // // //                           fontWeight: FontWeight.bold,
// // // //
// // // //                       ),
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //                 ),
// // // //
// // // //                 // code of Tap button of Signup
// // // //
// // // //                 Material(
// // // //                   color: (Colors.purple.shade700),
// // // //                   child: InkWell(
// // // //                     onTap: (){
// // // //                       Navigator.push(context, MaterialPageRoute(
// // // //                       builder: (context) => SignUpScreen()
// // // //                       ));
// // // //                     },
// // // //                     child: Padding(padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
// // // //                       child: Text(
// // // //                         "Sign Up",style: TextStyle(
// // // //                         color: Colors.white,
// // // //                         fontSize: 22,
// // // //                         fontWeight: FontWeight.bold,
// // // //                       ),
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //                 ),
// // // //               ],
// // // //             ),
// // // //
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //
// // // //   }
// // // // }