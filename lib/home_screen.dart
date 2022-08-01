import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'components/my_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          userInput.toString(),
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        ),
                      ),
                      Text(
                        answer.toString(),
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MYButton(
                          title: 'AC',
                          onPress: () {
                            setState(() {
                              userInput = '';
                              answer = '';
                            });
                          },
                        ),
                        MYButton(
                          title: '+/-',
                          onPress: () {
                            setState(() {
                              if (double.parse(userInput) == 0.0) {
                              } else {
                                if (userInput[0] == '-') {
                                  userInput = userInput.substring(1);
                                } else {
                                  userInput = '-$userInput';
                                }
                              }
                            });
                          },
                        ),
                        MYButton(
                          title: '%',
                          onPress: () {
                            setState(() {
                              userInput += '%';
                            });
                          },
                        ),
                        MYButton(
                          title: '/',
                          onPress: () {
                            setState(() {
                              userInput += '/';
                            });
                          },
                          color: Color(0xffffa00a),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(
                          title: '7',
                          onPress: () {
                            setState(() {
                              userInput += '7';
                            });
                          },
                        ),
                        MYButton(
                          title: '8',
                          onPress: () {
                            setState(() {
                              userInput += '8';
                            });
                          },
                        ),
                        MYButton(
                          title: '9',
                          onPress: () {
                            setState(() {
                              userInput += '9';
                            });
                          },
                        ),
                        MYButton(
                          title: 'x',
                          onPress: () {
                            setState(() {
                              userInput += 'x';
                            });
                          },
                          color: Color(0xffffa00a),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(
                          title: '4',
                          onPress: () {
                            setState(() {
                              userInput += '4';
                            });
                          },
                        ),
                        MYButton(
                          title: '5',
                          onPress: () {
                            setState(() {
                              userInput += '5';
                            });
                          },
                        ),
                        MYButton(
                          title: '6',
                          onPress: () {
                            setState(() {
                              userInput += '6';
                            });
                          },
                        ),
                        MYButton(
                          title: '-',
                          onPress: () {
                            setState(() {
                              userInput += '-';
                            });
                          },
                          color: Color(0xffffa00a),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(
                          title: '1',
                          onPress: () {
                            setState(() {
                              userInput += '1';
                            });
                          },
                        ),
                        MYButton(
                          title: '2',
                          onPress: () {
                            setState(() {
                              userInput += '2';
                            });
                          },
                        ),
                        MYButton(
                          title: '3',
                          onPress: () {
                            setState(() {
                              userInput += '3';
                            });
                          },
                        ),
                        MYButton(
                          title: '+',
                          onPress: () {
                            setState(() {
                              userInput += '+';
                            });
                          },
                          color: Color(0xffffa00a),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(
                          title: '0',
                          onPress: () {
                            setState(() {
                              userInput += '0';
                            });
                          },
                        ),
                        MYButton(
                          title: '.',
                          onPress: () {
                            setState(() {
                              userInput += '.';
                            });
                          },
                        ),
                        MYButton(
                          title: 'DEL',
                          onPress: () {
                            setState(() {
                              userInput =
                                  userInput.substring(0, userInput.length - 1);
                            });
                          },
                        ),
                        MYButton(
                          title: '=',
                          onPress: () {
                            equalPressed();
                            setState(() {});
                          },
                          color: Color(0xffffa00a),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void equalPressed() {
    String finalUserInput = userInput;
    finalUserInput = userInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}
