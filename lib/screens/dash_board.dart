import 'dart:ui';

import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          //height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Good Morning",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Agent Santhosh Vs",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 160,
                    ),
                    const Icon(
                      Icons.notification_add_outlined,
                      color: Color.fromARGB(255, 121, 121, 121),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.account_circle_outlined,
                      color: Color.fromARGB(255, 121, 121, 121),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    const Text(
                      "Dashboard",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 185,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            "Today Task",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "03",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: Stack(
                    children: [
                      Container(
                        width: 350,
                        height: 100,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 225, 245, 234),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10.0),
                        width: 350,
                        height: 150,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 191, 227, 206),
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Card No: A-1001",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Chitradurga Taluk",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10.0, left: 25),
                              child: Column(
                                children: [
                                  const Text(
                                    "Agent ID:A20S1001",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 60,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    width: 150,
                                    height: 17,
                                    alignment: Alignment.center,
                                    color:
                                        const Color.fromARGB(255, 224, 134, 0),
                                    child: const Text(
                                      "Generate Customer",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.location_on,
                      color: Color.fromARGB(255, 121, 121, 121),
                    ),
                    Text(
                      "Chitradurga",
                      style: TextStyle(
                          color: Color.fromARGB(255, 130, 130, 130),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Hospital in near you",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 350,
                  height: 40,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    style: const TextStyle(
                      color: Color.fromARGB(193, 85, 81, 81),
                    ),
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        size: 18,
                      ),
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      //filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(105, 97, 97, 103),
                            width: 0.7),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(90, 194, 191, 203),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                      hintText: "Search Hospital which you looking for...",
                      hintStyle: TextStyle(
                          color: Color.fromARGB(114, 61, 59, 59),
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    // validator: (value) {
                    //   if (value!.length < 10) {
                    //     return "Enter a valid number";
                    //   } else {
                    //     return null;
                    //   }
                    // },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 144, 144, 144)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "AKSHAYA GLOBAL HOSPITAL",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "OPP SRI RAMA KALYANA MANTAPA,",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "CHALLAKERE ROAD,CHITRADURGA-577501",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                children: const [
                                  Text(
                                    "DISCOUNT UPTO",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 91, 91, 91)),
                                  ),
                                  Text(
                                    "25 %",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Specialist of:",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "EAR NOSE & THROAT(E N T), OBSTERTRICS & GYNAECOLOGY(OBG), PAEDIATRICS ORTHOPEDICS, UROLOGY, NEUROLOGY, GENERAL MEDICINE, GENERAL SURGERY DIAGNOSTIC IMAGING, X-RAY & ULTRASOUND",
                          style: TextStyle(fontSize: 10),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 100,
                              height: 20,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color.fromARGB(255, 33, 148, 13)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ))),
                                onPressed: () {},
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 57,
                                  child: const Text(
                                    'Call Hospital',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              width: 100,
                              height: 20,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color.fromARGB(255, 224, 134, 0)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ))),
                                onPressed: () {},
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 57,
                                  child: const Text(
                                    'View Details',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 144, 144, 144)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "SR HOSPITAL",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "OPP PRIVATE BUS STAND,CHALLAKERE,",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                               
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                children: const [
                                  Text(
                                    "DISCOUNT UPTO",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 91, 91, 91)),
                                  ),
                                  Text(
                                    "30 %",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Specialist of:",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "EAR NOSE & THROAT(E N T), OBSTERTRICS & GYNAECOLOGY(OBG), PAEDIATRICS ORTHOPEDICS, UROLOGY, NEUROLOGY, GENERAL MEDICINE, GENERAL SURGERY DIAGNOSTIC IMAGING, X-RAY & ULTRASOUND",
                          style: TextStyle(fontSize: 10),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 100,
                              height: 20,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color.fromARGB(255, 33, 148, 13)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ))),
                                onPressed: () {},
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 57,
                                  child: const Text(
                                    'Call Hospital',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              width: 100,
                              height: 20,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color.fromARGB(255, 224, 134, 0)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ))),
                                onPressed: () {},
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 57,
                                  child: const Text(
                                    'View Details',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
