import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({
    required this.bmiResult,
    required this.resultText,
    required this.interpolation
  });

  final String bmiResult;
  final String resultText;
  final String interpolation;

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
            children: [             
                const Text('Tu resultado', 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold), 
                  ),

                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        color: inactiveCardColour,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            
                            Container(
                                        
                              child: Text(resultText, 
                                style: 
                                  const TextStyle(
                                    color: Color.fromARGB(255, 2, 231, 143),
                                    fontSize: 25.0),),
                            ),
                      
                            const SizedBox(
                              height: 70.0,
                            ),
                      
                            Container(
                              child: Text(bmiResult, 
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 120.0),),
                            ),

                            const SizedBox(
                              height: 90.0,
                            ),
                      
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                child: Text(interpolation, 
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0),
                                    textAlign: TextAlign.center,),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              
              
               Container(
                  color: blueApp,
                  width: double.infinity,
                  height: 70.0,
                  child: 
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Center(
                        child: Text('Recalcular',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                          ),
                                          ),
                      ),
                    ),
                )
              

            ],
          ),
      )
    );
  }
}