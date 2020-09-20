import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const lightPurple = 0xFF1D1E33;
const footerColor = 0xFFEB1552;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      containerColor: Color(lightPurple),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      containerColor: Color(lightPurple),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: ReusableCard(
                      containerColor: Color(lightPurple),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      containerColor: Color(lightPurple),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      containerColor: Color(lightPurple),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Color(footerColor),
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.containerColor, this.cardChild});

  final Color containerColor;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: containerColor,
      ),
    );
  }
}
