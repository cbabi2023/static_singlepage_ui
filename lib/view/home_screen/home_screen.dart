import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hugeicons/hugeicons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      color: const Color(0xff2A2C49),
      child: SafeArea(
        child: Scaffold(
          // ----------- background color -------------
          backgroundColor: const Color(0xff2A2C49),

          // -------- Body Content Starts ---------------------
          body: Padding(
            padding: const EdgeInsets.only(
                left: 20.0, right: 20, top: 30, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // -------- heading back button Starts---------------------
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xff0C1753)),
                      child: const Center(
                          child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Color(0xff3F5398),
                      )),
                    )
                  ],
                ),

                // -------- heading back button ENDS---------------------
                // -------- Feedback Text ---------------------

                const Text(
                  'Feedback',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),

                // -------- middle container with form ---------------------
                SizedBox(
                  height: screenHeight / 25,
                ),

                Container(
                  height: screenHeight / 1.6,
                  width: screenWidth,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xff0E1950),
                  ),
                  child: Column(
                    children: [
                      // -------------- Text --------------------------------
                      TextField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          fillColor: const Color(0xff515470),
                          filled: true,
                          label: const Padding(
                            padding: EdgeInsets.only(bottom: 58.0),
                            child: Text('Text...'),
                          ),
                          labelStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white.withOpacity(0.7),
                            fontWeight: FontWeight.w600,
                          ),
                          contentPadding:
                              const EdgeInsets.fromLTRB(10, 20, 10, 70),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),

                      // -------------- Text --------------------------------

                      const SizedBox(
                        height: 15,
                      ),

                      // ------- Stacked Containers------------------------------

                      SizedBox(
                        height: screenHeight / 3,
                        child: Stack(
                          children: [
                            // -------------- answer type --------------------------------
                            TextField(
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsetsDirectional.only(
                                  top: 10,
                                  bottom: 40,
                                  start: 10,
                                  end: 10,
                                ),
                                fillColor: const Color(0xff515470),
                                filled: true,
                                label: const Padding(
                                  padding: EdgeInsets.only(bottom: 20.0),
                                  child: Text('Answer type'),
                                ),
                                labelStyle: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white.withOpacity(0.7),
                                  fontWeight: FontWeight.w500,
                                ),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: FaIcon(
                                    FontAwesomeIcons.v,
                                    color: Colors.white.withOpacity(0.6),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),

                            // -------------- answer type Ends --------------------------------

                            Positioned(
                              bottom: 45,
                              left: 10,
                              right: 10,
                              child: Container(
                                alignment: Alignment.topLeft,
                                height: 180,
                                width: 50,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                decoration: BoxDecoration(
                                  color: const Color(0xff515470),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Divider(
                                      thickness: 2,
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                    Text(
                                      '1 - 10',
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.5),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Divider(
                                      thickness: 2,
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                    Text(
                                      'Yes/ No/ Neutral',
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.5),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Divider(
                                      thickness: 2,
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                    Text(
                                      'Yes/ No/ Maybe/ IDK',
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.5),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Divider(
                                      thickness: 2,
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                    Text(
                                      'Yes/ No/ Maybe/ IDK',
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.5),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // ------- Stacked Containers------------------------------

                      // ------------- Save Button ------------------------------

                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.white,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Save',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      // ------------- Save Button ------------------------------
                    ],
                  ),
                ),

                // -------- middle container with form ---------------------

                SizedBox(
                  height: screenHeight / 13,
                ),
                // -------- Row Container with Buttons---------------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: 60,
                      width: screenWidth / 1.8,
                      decoration: BoxDecoration(
                        color: const Color(0xff36396C),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // ----------circle Icons --------------
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.grey,
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.white,
                            ),
                          ),

                          // ----------Home Icon --------------

                          HugeIcon(
                            icon: HugeIcons.strokeRoundedHome07,
                            size: 33,
                            color: Colors.white,
                          ),

                          // -------- Setting Icon -----------

                          Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 33,
                          )
                        ],
                      ),
                    )
                  ],
                ),

                // -------- Row Container with Buttons---------------------
              ],
            ),
          ),
        ),
      ),
    );
  }
}
