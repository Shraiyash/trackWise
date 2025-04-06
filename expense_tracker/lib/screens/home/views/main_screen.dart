import 'package:expense_tracker/data/data.dart';
import 'package:expense_tracker/screens/home/views/see_all.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import '../../activity/activity.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('/Users/yash/expense-tracker/expense_tracker/assets/profile.jpg'), 
                              fit: BoxFit.cover,
                          ),
                            // color: Colors.blue.shade800,

                          ),
                        ),
                        // Icon(
                        //   CupertinoIcons.person_fill,
                        //   color: Colors.white,
                        // )
                      ],
                    ),
                    const SizedBox(width: 8,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Evening",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54
                          ),
                        ),
                        Text(
                          "Yash",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                        )
                      ],
                    )
                  ],
                ),
                IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell_solid),)
              ],
            ),
            const SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width /2,
              decoration: BoxDecoration(
                color: Colors.blue.shade800, 
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade600,
                    blurRadius: 10,
                    offset: const Offset(0, 5)
                  )
                ]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Current Balance",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  Text(
                    "\$ 8,435.00",
                    style: TextStyle(
                      fontSize: 45,
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape:  BoxShape.circle,
                              ),
                              child: Center(
                                child: Icon(CupertinoIcons.arrow_down_circle_fill,
                                size: 18,
                              ),
                            ),
                            ),
                            SizedBox(width: 9,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                "Amount Due",
                                style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w300
                              ),
                              ),
                              Text(
                                '\$ 645.00',
                                style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w600
                              ),
                              ),
                              // SizedBox(height: 10,),
                              //  Text(
                              //   'By 04/10/2025',
                              //   style: TextStyle(
                              //   fontSize: 10,
                              //   color: Colors.white,
                              //   fontWeight: FontWeight.w600
                              // ),
                              // ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape:  BoxShape.circle,
                              ),
                              child: Center(
                                child: Icon(CupertinoIcons.arrow_up_circle_fill,
                                size: 18,
                              ),
                            ),
                            ),
                            SizedBox(width: 9,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                "Next Income",
                                style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w300
                              ),
                              ),
                              Text(
                                '\$ 1,500.00',
                                style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w600
                              ),
                              ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 35,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Activity',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: GestureDetector(
                    onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => const SeeAll(),
                        ),
                        );
                    },
                    child: Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                      ),
                    ),
                  ),
                )

              ],
            ),
            SizedBox(height: 15,),
            Expanded(
              child: ListView.builder(
                itemCount: myActivity.length,
                itemBuilder: (context, int i) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 17),
                    child: Container(
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.grey.shade300,
                        //     blurRadius: 10,
                        //     offset: const Offset(0, 5)
                        //   )
                        // ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        // color: Colors.blue.shade800,
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                        image: AssetImage(myActivity[i]['image'],), // Update the path to your image asset
                                        fit: BoxFit.cover,
                                    ),
                                      ),
                                    ),
                                    // Icon(CupertinoIcons.rectangle_stack, color: Colors.white,)
                                  ],
                                ),
                                SizedBox(width: 15,),
                                Text(
                                  myActivity[i]['name'],
                                  style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                                ),
                                ),
                                
                                
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                  myActivity[i]['amount'],
                                  style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                                ),
                                ),
                                Text(
                                  myActivity[i]['sent'],
                                  style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black
                                ),
                                ),
                                  ],
                                )
                          ],
                        ),
                      )
                    ),
                  );
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}