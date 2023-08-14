import 'package:bmi_calculator/Screens/ResultScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bmi_calculator/utils/Vars.dart';

class Calculation extends StatefulWidget {
  const Calculation({Key? key}) : super(key: key);

  @override
  State<Calculation> createState() => _CalculationState();
}

class _CalculationState extends State<Calculation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI Calculator",
      home: Scaffold(
        backgroundColor: const Color(0xFFF0A0E21),
        appBar: AppBar(
          title: Center(
            child: Text(
              "BMI calculator",
              style: GoogleFonts.getFont("Roboto",textStyle: TextStyle(fontSize: 35.0)),
            ),
          ),
          backgroundColor: const Color(0xFFFF1A1F38),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(29.0),
                  width: 136.0,
                  height: 159,
                  decoration: const BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(15.0)),color: const Color(0xFFFF1A1F38),),
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),backgroundColor: const Color(0xFFFF1A1F38)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/venus.png"),
                        const SizedBox(height: 20.0,),
                        Text(
                          "FEMALE",
                          style: GoogleFonts.getFont("Roboto",textStyle: const TextStyle(fontSize: 24.0)),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(29.0),
                  width: 136.0,
                  height: 159,
                  decoration: const BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(15.0)),color: const Color(0xFFFF1A1F38),),
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),backgroundColor: const Color(0xFFFF1A1F38)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/mars.png"),
                        const SizedBox(height: 20.0,),
                        Text(
                          "MALE",
                          style: GoogleFonts.getFont("Roboto",textStyle: const TextStyle(fontSize: 24.0)),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.all(5.0),
              width: 334.0,
              height: 189,
              decoration: const BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(15.0)),color: const Color(0xFFFF1A1F38),),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "HEIGHT",
                          style: GoogleFonts.getFont("Roboto",textStyle: const TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.w500)),
                        ),

                        Text(
                          "cm",
                          style: GoogleFonts.getFont("Roboto",textStyle: const TextStyle(fontSize: 10.0,color: Colors.white,fontWeight: FontWeight.w400)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0,),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        valueIndicatorColor: const Color(0xFFF10606),
                        activeTrackColor: Color(0xFF6200EE)
                      ),
                      child: Slider(
                          value: height,
                          max: 220.0,
                          min: 80.0,
                          divisions: 220,
                          label: "${height.round()}",

                          onChanged: (value)
                          {
                            setState(() {
                              height=value;
                            });
                          }
                          ),
                    ),
                  ],
                ),
              ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(29.0),
                  width: 136.0,
                  height: 159,
                  decoration: const BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(15.0)),color: const Color(0xFFFF1A1F38),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "WEIGHT",
                        style: GoogleFonts.getFont("Roboto",textStyle: const TextStyle(fontSize: 24.0,fontWeight: FontWeight.w700,color: Colors.white)),
                      ),
                      const SizedBox(height: 20.0,),
                      Text(
                        "$weight",
                        style: GoogleFonts.getFont("Roboto",textStyle: const TextStyle(fontSize: 30.0,fontWeight: FontWeight.w700,color: Colors.white)),
                      ),
                      const SizedBox(height: 7.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: ()
                              {
                                  setState(() {
                                    weight+=1;
                                  });
                              },
                              icon:const Icon(Icons.add_circle,color: Colors.white,size: 30.0,)
                          ),
                          IconButton(
                              onPressed: ()
                              {
                                if(weight>1)
                                  {
                                    setState(() {
                                      weight-=1;
                                    });
                                  }
                              },
                              icon:const Icon(Icons.remove_circle,color: Colors.white,size: 30.0,)
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(29.0),
                  width: 136.0,
                  height: 159,
                  decoration: const BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(15.0)),color: const Color(0xFFFF1A1F38),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "AGE",
                        style: GoogleFonts.getFont("Roboto",textStyle: const TextStyle(fontSize: 24.0,fontWeight: FontWeight.w700,color: Colors.white)),
                      ),
                      const SizedBox(height: 20.0,),
                      Text(
                        "$age",
                        style: GoogleFonts.getFont("Roboto",textStyle: const TextStyle(fontSize: 30.0,fontWeight: FontWeight.w700,color: Colors.white)),
                      ),
                      const SizedBox(height: 7.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: ()
                              {
                                setState(() {
                                  age+=1;
                                });
                              },
                              icon:const Icon(Icons.add_circle,color: Colors.white,size: 30.0,)
                          ),
                          IconButton(
                              onPressed: ()
                              {
                                if(age>1)
                                {
                                  setState(() {
                                    age-=1;
                                  });
                                }
                              },
                              icon:const Icon(Icons.remove_circle,color: Colors.white,size: 30.0,)
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                height: 84.0,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Result()));
                        setState(() {
                          bmi=weight/((height/100)*(height/100));
                          if(bmi<18.5)
                            {
                              result="Underweight";
                              resultColor=Colors.grey;
                            }
                          else if(18.5<=bmi&&bmi<=24.9)
                            {
                              result="Normal";
                              resultColor=const Color(0xFF09FF7A);
                            }
                          else if(25.0<=bmi&&bmi<=29.9)
                          {
                            result="Overweight";
                            resultColor=Colors.yellow;
                          }
                          else if(30.0<=bmi&&bmi<=34.9)
                          {
                            result="Obesity class I";
                            resultColor=Colors.orange;
                          }
                          else if(35.0<=bmi&&bmi<=39.9)
                          {
                            result="Obesity class II";
                            resultColor=Colors.deepOrange;
                          }
                          else if(40.0<=bmi)
                          {
                            result="Obesity class III";
                            resultColor=Colors.red;
                          }
                        });
                    },
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFF10606)),
                    child: Text(
                      "CALCULATE",
                      style: GoogleFonts.getFont("Roboto",textStyle: const TextStyle(fontSize: 24.0,fontWeight: FontWeight.w700,color: Colors.white)),
                    ),
                ),
              ),
            )
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
