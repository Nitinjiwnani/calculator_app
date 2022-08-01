import 'package:calculator_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
    print('rebuild');
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
                    children: [
                      Text(
                        userInput.toString(),
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      Text(
                        userInput.toString(),
                        style: TextStyle(fontSize: 30, color: Colors.white),
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
                          onPress: () {},
                        ),
                        MYButton(
                          title: '+/-',
                          onPress: () {},
                        ),
                        MYButton(
                          title: '%',
                          onPress: () {},
                        ),
                        MYButton(
                          title: '/',
                          onPress: () {},
                          color: Color(0xffffa00a),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(
                          title: '7',
                          onPress: () {},
                        ),
                        MYButton(
                          title: '8',
                          onPress: () {},
                        ),
                        MYButton(
                          title: '9',
                          onPress: () {},
                        ),
                        MYButton(
                          title: 'X',
                          onPress: () {},
                          color: Color(0xffffa00a),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(
                          title: '4',
                          onPress: () {},
                        ),
                        MYButton(
                          title: '5',
                          onPress: () {},
                        ),
                        MYButton(
                          title: '6',
                          onPress: () {},
                        ),
                        MYButton(
                          title: '-',
                          onPress: () {},
                          color: Color(0xffffa00a),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(
                          title: '1',
                          onPress: () {},
                        ),
                        MYButton(
                          title: '2',
                          onPress: () {},
                        ),
                        MYButton(
                          title: '3',
                          onPress: () {},
                        ),
                        MYButton(
                          title: '+',
                          onPress: () {},
                          color: Color(0xffffa00a),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(
                          title: '0',
                          onPress: () {},
                        ),
                        MYButton(
                          title: '.',
                          onPress: () {},
                        ),
                        MYButton(
                          title: 'DEL',
                          onPress: () {},
                        ),
                        MYButton(
                          title: '=',
                          onPress: () {},
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
}
