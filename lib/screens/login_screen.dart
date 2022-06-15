import 'package:flutter/material.dart';
import 'package:technical_task/screens/otp_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150.0, left: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "LOGIN IN",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 120.0),
                      child: Row(
                        children: const [
                          Text(
                            "Hi, Welcome Back!",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                wordSpacing: 1),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.waving_hand_rounded,
                            size: 17,
                            color: Color.fromARGB(239, 215, 196, 21),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 130,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Mobile Number",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 350,
                    height: 50,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                        color: Color.fromARGB(193, 85, 81, 81),
                      ),
                      decoration: const InputDecoration(
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
                        hintText: "Entered Registered Mobile Number",
                        hintStyle: TextStyle(
                            color: Color.fromARGB(114, 61, 59, 59),
                            fontSize: 15,
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
                    height: 50,
                  ),
                  SizedBox(
                    width: 350,
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 33, 148, 13)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ))),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (ctx) => OtpScreen()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 57,
                        child: const Text(
                          'LOGIN IN',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Press login button to go OTP-Screen",
                      style: TextStyle(
                          fontSize: 10,
                          color: Color.fromARGB(255, 105, 104, 104)),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 260,
              ),
              SizedBox(
                width: 270,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: 'By signing up you agree to our ',
                    style: TextStyle(
                        color: Color.fromARGB(255, 135, 135, 135),
                        fontSize: 16),
                    children: [
                      TextSpan(
                          text: 'Terms',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      TextSpan(text: '  and'),
                      TextSpan(
                          text: ' Conditions of Use',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
