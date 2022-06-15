import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:technical_task/screens/dash_board.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 200.0, left: 0),
            child: Column(
              children: [
                const Text(
                  "OTP VERIFICATION",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: 'Enter the OTP sent to ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 82, 81, 81),
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                          text: '-+91-9876543210',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                OtpTextField(
                  numberOfFields: 4,
                  fieldWidth: 50,
                  showFieldAsBox: true,
                  borderRadius: BorderRadius.circular(10),
                  focusedBorderColor: Colors.black,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text("00:50 Sec"),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Don't receive code ?"),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      child: Text(
                        "Resend Again",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                SizedBox(
                  width: 350,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 33, 148, 13)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ))),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) => DashBoard()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 57,
                      child: const Text(
                        'SUBMIT',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Press Submit button to go DashBoard",style: TextStyle(
                      fontSize: 10,
                      color: Color.fromARGB(255, 105, 104, 104)
                    ),),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
