import 'package:bmi_calculator/utils/Vars.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI Calculator",
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFFF0A0E21),
          body: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: ()
                      {
                        Navigator.pop(context, MaterialPageRoute(builder: (context)=> const Result()));
                      }
                      , icon: const Icon(Icons.arrow_back_ios_new,color: Colors.white,)
                  ),
                  Text(
                    "Your Result: ",
                    style: GoogleFonts.getFont("Roboto",textStyle: const TextStyle(fontSize: 36.0,fontWeight: FontWeight.w700,color: Colors.white)),
                  ),
                ],
              ),
              const SizedBox(height: 20.0,),
              Container(
                margin: const EdgeInsets.all(10.0),
                width: 383.0,
                height: 535,
                decoration: const BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(15.0)),color: const Color(0xFFFF1A1F38),),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        result,
                        style: GoogleFonts.getFont("Roboto",textStyle: TextStyle(fontSize: 35.0,fontWeight: FontWeight.w700,color: resultColor)),
                      ),
                    ),
                    const SizedBox(height: 180.0,),
                    Text(
                      bmi.toStringAsFixed(1),
                      style: GoogleFonts.getFont("Roboto",textStyle: const TextStyle(fontSize: 80.0,fontWeight: FontWeight.w700,color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
