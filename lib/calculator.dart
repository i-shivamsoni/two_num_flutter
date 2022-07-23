import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double a = 0;
  double b = 0;
  double ans = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Colors.purple),
          title: Text('Two_Num_Flutter'),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  onChanged: ((value) => {a = double.parse(value)}),
                  decoration: InputDecoration(
                    fillColor: const Color.fromARGB(255, 234, 241, 241),
                    hintText: 'Enter number 1',
                    // enabledBorder: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(26.r))),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  onChanged: ((value) => {b = double.parse(value)}),
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 234, 241, 241),

                    hintText: 'Enter number 2',
                    // enabledBorder: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(26.r))),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.purple,
                      ),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              ans = (a - b) as double;
                            });
                          },
                          child: Text(
                            '-',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          )),
                      width: 70,
                      height: 40,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.purple,
                      ),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              ans = (a + b) as double;
                              print(ans);
                            });
                          },
                          child: Text(
                            '+',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          )),
                      width: 70,
                      height: 40,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.purple,
                      ),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              ans = (a / b);
                              print(ans);
                            });
                          },
                          child: Text(
                            '/',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          )),
                      width: 70,
                      height: 40,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.purple,
                      ),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              ans = (a * b) as double;
                            });
                          },
                          child: Text(
                            '*',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          )),
                      width: 70,
                      height: 40,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Result',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 20),
              Text(
                '$ans',
              )
            ],
          ),
        ),
      ),
    );
  }
}
