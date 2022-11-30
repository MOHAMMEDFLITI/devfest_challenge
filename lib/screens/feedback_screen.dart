import 'package:dev_fest_chalenge/components/components.dart';
import 'package:flutter/material.dart';

class FeedbackScreen extends StatefulWidget {
  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  bool redCircle = false;

  bool pinkCircle = false;

  bool orangeCircle = false;

  bool greenCircle = false;

  bool lightGreenCircle = false;

  var emailController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: SafeArea(
          child: Form(
            key: formKey,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    headPage(
                      imageOne: 'assets/images/background.png',
                      imageTwo: 'assets/images/Lampe.png',
                      imageThree: 'assets/images/Maqam_el_chahid.png',
                      size: size.width,
                      text: const TextSpan(
                        text: 'FEEDBACK',
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: ' F',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          TextSpan(
                            text: 'ORM',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 10,
                      ),
                      child: Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'anonymous'.toUpperCase(),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                        ),
                        child: Text(
                          'NAME/E-mail',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: 50,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[100],
                        ),
                        child: TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "email address most not be empty";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                        ),
                        child: Text(
                          'Rate your Experience in the event',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  redCircle = !redCircle;
                                  pinkCircle = false;
                                  orangeCircle = false;
                                  greenCircle = false;
                                  lightGreenCircle = false;
                                });
                              },
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor:
                                    redCircle ? Colors.red : Colors.redAccent,
                              ),
                            ),
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  pinkCircle = !pinkCircle;
                                  redCircle = false;
                                  orangeCircle = false;
                                  greenCircle = false;
                                  lightGreenCircle = false;
                                });
                              },
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: pinkCircle
                                    ? Colors.pink
                                    : Colors.pinkAccent,
                              ),
                            ),
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  orangeCircle = !orangeCircle;
                                  redCircle = false;
                                  pinkCircle = false;
                                  greenCircle = false;
                                  lightGreenCircle = false;
                                });
                              },
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: orangeCircle
                                    ? Colors.orange
                                    : Colors.orangeAccent,
                              ),
                            ),
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  greenCircle = !greenCircle;
                                  redCircle = false;
                                  pinkCircle = false;
                                  orangeCircle = false;
                                  lightGreenCircle = false;
                                });
                              },
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: greenCircle
                                    ? Colors.green[300]
                                    : Colors.greenAccent,
                              ),
                            ),
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  lightGreenCircle = !lightGreenCircle;
                                  redCircle = false;
                                  pinkCircle = false;
                                  orangeCircle = false;
                                  greenCircle = false;
                                });
                              },
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: lightGreenCircle
                                    ? Colors.green
                                    : Colors.lightGreenAccent,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: const Alignment(1, 0),
                        child: Image.asset(
                          'assets/images/Globe.png',
                          scale: 1.5,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                        ),
                        child: Text(
                          'MORE DETAILS',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 200,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[100],
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          minLines: 1,
                          maxLines: 9,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: const Alignment(0.9, 0),
                  child: Image.asset(
                    'assets/images/Arrow.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  children: [
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 50,
                      ),
                      child: InkWell(
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            //print(emailController.text);
                          }
                        },
                        child: Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent[100]!,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'submit'.toUpperCase(),
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: const Alignment(-0.85, 0),
                  child: Image.asset(
                    'assets/images/Star.png',
                    fit: BoxFit.cover,
                  ),
                ),
                footerPage(
                  imagesSize: size.width,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
