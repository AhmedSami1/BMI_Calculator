
import 'dart:math';

import 'package:flutter/material.dart';

import 'bmi_result.dart';


class BmiScreen extends StatefulWidget
{
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen>
{
  bool isMale = true;
  double height = 120.0;
  int age = 20;
  int weight = 20 ;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
              color: Colors.white
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children:
        [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children:
                [
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: isMale ? Colors.pinkAccent : Colors.grey[900] ,
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Image(
                              image: AssetImage('assets/image/male.png'),
                              height: 90.0,
                              width: 90.0,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child
                        : GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: !isMale? Colors.pinkAccent : Colors.grey[900],
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Image(
                              image: AssetImage('assets/image/female.png'),
                              width: 90.0,
                              height: 90.0,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric( horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(30.0)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 25.0,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [
                        Text(
                          '${height.round()}',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 35.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        const Text(
                          'CM',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    Slider(
                        activeColor: Colors.pinkAccent,
                        inactiveColor: Colors.pink.withOpacity(.2),
                        value: height,
                        max: 220.0,
                        min: 80.0,
                        onChanged: (value){
                          setState(() {
                            height = value;
                          });

                        })
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:
                [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Text(
                            'AGE',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 25.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,),
                          Text(
                            '${age}',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 35.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              FloatingActionButton(
                                onPressed: ()
                                {
                                  setState(() {
                                    age--;
                                  });
                                },
                                mini: true,
                                backgroundColor: Colors.pinkAccent,

                                child: const Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: ()
                                {
                                  setState(() {
                                    age++;
                                  });
                                },
                                mini: true,
                                backgroundColor: Colors.pinkAccent,
                                child: const Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(

                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(30.0),
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 25.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            '${weight}',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 35.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              FloatingActionButton(
                                onPressed: ()
                                {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                mini: true,
                                backgroundColor: Colors.pinkAccent,
                                child: const Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: ()
                                {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                mini: true,
                                backgroundColor: Colors.pinkAccent,
                                child: const Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 70.0,
            child: MaterialButton(
              color: Colors.pinkAccent,
              onPressed: ()
              {
                var result = weight / pow(height / 100, 2);
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BMIResultScreen(
                  result: result,
                  height: height,
                  age: age,
                  isMale: isMale ,
                  weight: weight,
                ),
                ),
                );
              },
              child: const Text(
                'CALCULATE',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


}