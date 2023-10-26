import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MainPage(),
  ));
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Aimed Labs'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [Card1(), Card2()],
      ),
    ));
  }
}

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final redCard1Width = constraints.maxWidth * 0.9;

        final greenCard1Width = redCard1Width * 0.85;

        return RedCard1(
          redCard1Width: redCard1Width,
          greenCard1Width: greenCard1Width,
        );
      },
    );
  }
}

class RedCard1 extends StatelessWidget {
  final double redCard1Width;
  final double greenCard1Width;

  const RedCard1({
    Key? key,
    required this.redCard1Width,
    required this.greenCard1Width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: redCard1Width,
      height: 140,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                FixedGrayCard1(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                FlexibleGreenCard1(greenCardWidth1: greenCard1Width),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FixedGrayCard1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      width: 120.0,
      height: 50.0,
    );
  }
}

class FlexibleGreenCard1 extends StatelessWidget {
  final double greenCardWidth1;

  const FlexibleGreenCard1({
    Key? key,
    required this.greenCardWidth1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: greenCardWidth1,
      height: 50.0,
    );
  }
}

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: LayoutBuilder(
            builder: (context, constraints) {
              // Calculate the width of the red card as a percentage of the screen width.

              final redCardWidth2 = constraints.maxWidth * 0.9;

              // Calculate the width of the green card as a percentage of the red card width.

              final greenCardWidth2 = redCardWidth2 * 0.95;

              return RedCard2(
                redCardWidth2: redCardWidth2,
                greenCardWidth2: greenCardWidth2,
              );
            },
          ),
        ),
     Positioned(left: 120,child: FixedGrayCard2()),
       ] );
     
  }
}

class RedCard2 extends StatelessWidget {
  final double redCardWidth2;
  final double greenCardWidth2;

  const RedCard2({
    Key? key,
    required this.redCardWidth2,
    required this.greenCardWidth2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: redCardWidth2,
      height: 140,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                FlexibleGreenCard2(greenCardWidth2: greenCardWidth2),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FixedGrayCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      width: 120.0,
      height: 50.0,
    );
  }
}

class FlexibleGreenCard2 extends StatelessWidget {
  final double greenCardWidth2;

  const FlexibleGreenCard2({
    Key? key,
    required this.greenCardWidth2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70.0),
      child: Container(
        color: Colors.green,
        width: greenCardWidth2,
        height: 50.0,
      ),
    );
  }
}
