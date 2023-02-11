import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String input = "0";
  String result = "0";
  Parser p = Parser();
  late Expression exp = p.parse("0");

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    Color lightblue = const Color.fromARGB(255, 189, 171, 169);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 243, 243),
      appBar: AppBar(
        title: const Text(
          "calculator",
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 22, 22, 22),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(children: [
        Expanded(
          child: Container(
            alignment: Alignment.topRight,
            margin: const EdgeInsets.only(right: 20, top: 20),
            child: Text(
              input,
              style: const TextStyle(
                  fontSize: 30, color: Color.fromARGB(255, 112, 110, 110)),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.topRight,
            margin: const EdgeInsets.only(right: 20),
            child: Text(
              result,
              textDirection: TextDirection.rtl,
              style: const TextStyle(
                  fontSize: 50,
                  color: Color.fromARGB(255, 46, 45, 45),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      input = "0";
                      result = "0";
                    });
                  },
                  child: Button(
                      content: "Clr",
                      background: Colors.lightBlue,
                      width: 0.19 * width),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (input != "0") {
                        if (input[input.length - 1] != " ") {
                          if (input.length == 1) {
                            input = "0";
                          } else {
                            input = input.substring(0, input.length - 1);
                          }
                        } else {
                          if (input.length == 3) {
                            input = "0";
                          } else {
                            input = input.substring(0, input.length - 3);
                          }
                        }
                      }
                    });
                  },
                  child: Button(
                      content: "Del",
                      background: Colors.lightBlue,
                      width: 0.19 * width),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      input == "0" ? input = " x " : input += " x ";
                    });
                  },
                  child: Button(
                      content: "X", background: lightblue, width: 0.19 * width),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      input == "0" ? input = " ÷ " : input += " ÷ ";
                    });
                  },
                  child: Button(
                      content: "÷", background: lightblue, width: 0.19 * width),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      input == "0" ? input = "7" : input += "7";
                    });
                  },
                  child: Button(
                      content: "7",
                      background: Colors.white,
                      width: 0.19 * width),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      input == "0" ? input = "8" : input += "8";
                    });
                  },
                  child: Button(
                      content: "8",
                      background: Colors.white,
                      width: 0.19 * width),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      input == "0" ? input = "9" : input += "9";
                    });
                  },
                  child: Button(
                      content: "9",
                      background: Colors.white,
                      width: 0.19 * width),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      input == "0" ? input = " + " : input += " + ";
                    });
                  },
                  child: Button(
                      content: "+", background: lightblue, width: 0.19 * width),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      input == "0" ? input = "4" : input += "4";
                    });
                  },
                  child: Button(
                      content: "4",
                      background: Colors.white,
                      width: 0.19 * width),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      input == "0" ? input = "5" : input += "5";
                    });
                  },
                  child: Button(
                      content: "5",
                      background: Colors.white,
                      width: 0.19 * width),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      input == "0" ? input = "6" : input += "6";
                    });
                  },
                  child: Button(
                      content: "6",
                      background: Colors.white,
                      width: 0.19 * width),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      input == "0" ? input = " - " : input += " - ";
                    });
                  },
                  child: Button(
                      content: "-", background: lightblue, width: 0.19 * width),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        input == "0" ? input = "1" : input += "1";
                      });
                    },
                    child: Button(
                        content: "1",
                        background: Colors.white,
                        width: 0.19 * width),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        input == "0" ? input = "2" : input += "2";
                      });
                    },
                    child: Button(
                        content: "2",
                        background: Colors.white,
                        width: 0.19 * width),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        input == "0" ? input = "3" : input += "3";
                      });
                    },
                    child: Button(
                        content: "3",
                        background: Colors.white,
                        width: 0.19 * width),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        try {
                          input = input.replaceAll("x", "*");
                          input = input.replaceAll("÷", "/");
                          exp = p.parse(input);
                          ContextModel cm = ContextModel();
                          result = (exp.evaluate(EvaluationType.REAL, cm))
                              .toString();
                          input = input.replaceAll("*", "x");
                          input = input.replaceAll("/", "÷");
                        } catch (e) {
                          result = "error";
                          input = "0";
                        }
                      });
                    },
                    child: Button(
                        content: "=",
                        background: Colors.orange,
                        width: 0.19 * width),
                  ),
                ],
              ),
            ),
          ],
        )
      ]),
    );
  }
}

class Button extends StatelessWidget {
  const Button(
      {Key? key,
      required this.content,
      required this.background,
      required this.width})
      : super(key: key);
  final String content;
  final Color background;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: width,
      height: width,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      child: Text(
        content,
        style: const TextStyle(
          fontSize: 30,
        ),
      ),
    );
  }
}
