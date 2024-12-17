import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'cards.dart';
import 'constants.dart';
import 'bottom_Button.dart';
import 'bmi_calculator.dart';

int age = 23;
int weight = 67;
double height = 120;

enum Genders { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;

  void updateColour(Genders selectedGender) {
    selectedGender == Genders.male
        ? maleCardColour = activeCardColour
        : maleCardColour = inactiveCardColour;

    selectedGender == Genders.female
        ? femaleCardColour = activeCardColour
        : femaleCardColour = inactiveCardColour;
  }

  // void bmiCalculator(weight, heightCm){
  //     double heightM = heightCm / 100;
  //     double doubleHeight = heightM * heightM;
  //     double result = weight/doubleHeight;
  //     print('El bmi es: $result');
      
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: BmiAppBar,
        centerTitle: true,
        title: const Text(
          'BMI Calculator',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Genders.male);
                      });
                    },
                    child: CardsGender(
                        colour: maleCardColour,
                        cardGender: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              color: Colors.white,
                              size: iconSize,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                color: greyApp,
                                fontSize: 19.0,
                              ),
                            ),
                          ],
                        )),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Genders.female);
                      });
                    },
                    child: CardsGender(
                        colour: femaleCardColour,
                        cardGender: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: iconSize,
                              color: Colors.white,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(color: greyApp, fontSize: 19.0),
                            ),
                          ],
                        )),
                  )),
                ],
              ),
            ),
            Expanded(
                child: Cards(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    child: const Text(
                      'HEIGHT',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: greyApp,
                        fontSize: textSize,
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: height.toStringAsFixed(0),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: numberSize,
                          ),
                        ),
                        const TextSpan(
                          text: 'cm',
                          style: TextStyle(
                            color: greyApp,
                            fontSize: textSize,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 15.0),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 30.0),
                        activeTrackColor: Colors.blue,
                        inactiveTrackColor: Colors.grey,
                        thumbColor: blueApp,
                        overlayColor: blueApp.withAlpha(32)),
                    child: Slider(
                        value: height,
                        min: 120.0,
                        max: 200.0,
                        activeColor: blueApp,
                        inactiveColor: greyApp,
                        onChanged: (newValue) {
                          setState(() {
                            height = newValue as double;
                          });
                        }),
                  ),
                ],
              ),
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Cards(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'WEIGHT',
                          style: TextStyle(fontSize: 20.0, color: greyApp),
                        ),
                        Text(
                          '${weight}',
                          style: const TextStyle(
                              fontSize: numberSize,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FloatingActionButton(
                                heroTag: 'Decrement-Weight',
                                backgroundColor: greyApp,
                                shape: const CircleBorder(),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                  size: 35.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FloatingActionButton(
                                heroTag: 'Increment-Weight',
                                backgroundColor: greyApp,
                                shape: const CircleBorder(),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 35.0,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
                  Expanded(
                      child: Cards(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'AGE',
                          style: TextStyle(
                            fontSize: textSize,
                            color: greyApp,
                          ),
                        ),
                        Text(
                          '${age}',
                          style: const TextStyle(
                            fontSize: numberSize,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FloatingActionButton(
                                heroTag: 'Decrement-Age',
                                backgroundColor: greyApp,
                                shape: const CircleBorder(),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                  size: 35.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FloatingActionButton(
                                heroTag: 'Increment-Age',
                                backgroundColor: greyApp,
                                shape: const CircleBorder(),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 35.0,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
                ],
              ),
            ),

            BottomButton(buttonTitle: 'Calcular', onTap: (){
               Calculator result = Calculator(height: height, weight: weight);

               Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    bmiResult: result.calculateBMI(),
                    resultText: result.getResult(),
                    interpolation: result.getInterpolation(),

                  ),
                )
               );

            },),

          ],
        ),
      ),
    );
  }
}
