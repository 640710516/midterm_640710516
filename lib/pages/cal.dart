import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cal extends StatefulWidget {
  const Cal({super.key});

  @override
  State<Cal> createState() => _CalState();
}

class _CalState extends State<Cal> {
  var _number = "";
  var _value = "";
  static const addSign = "\u002B";
  static const subtractSign = "\u2212";
  static const multiplySign = "\u00D7";
  static const divideSign = "\u00F7";
  static const equalSign = "\u003D";

  Widget builditem({
    required String number,
    Color color = Colors.black,
  }) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            //_text = label;
            _number = number;
            _value = _value.replaceRange(
                _value.lastIndexOf(""), _value.lastIndexOf(""), _number);
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Container(
                height: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      number,
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Sign({
    required String number,
    Color color = Colors.black,
  }) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            //_text = label;
            _number = number;
            _value = _value.replaceRange(
                _value.lastIndexOf(""), _value.lastIndexOf(""), _number);
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Container(
                height: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 137, 127, 242),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      number,
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var itemList = [
      builditem(number: "1"),
      builditem(number: "2"),
      builditem(number: "3"),
      builditem(number: "4"),
      builditem(number: "5"),
      builditem(number: "6"),
      builditem(number: "7"),
      builditem(number: "8"),
      builditem(number: "9"),
      builditem(number: "0"),
      Sign(number: addSign),
      Sign(number: subtractSign),
      Sign(number: multiplySign),
      Sign(number: divideSign),
      Sign(number: equalSign),
    ];
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              //mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //Icon(_icon, size: 100.0),
                Text(
                  _value,
                  style: GoogleFonts.kanit(fontSize: 30),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _value = "";
                      });
                    },
                    child: Container(
                      height: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 64, 255, 93),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      child: Text(
                        'C',
                        style: GoogleFonts.kanit(
                            fontSize: 30, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Container(
                    height: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 64, 255, 93),
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          _value = _value.substring(0, _value.length - 1);
                        });
                      },
                      child: Icon(
                        Icons.backspace_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: itemList[6],
                ),
                SizedBox(width: 8),
                Expanded(
                  child: itemList[7],
                ),
                SizedBox(width: 8),
                Expanded(
                  child: itemList[8],
                ),
                SizedBox(width: 8),
                Expanded(
                  child: itemList[13],
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: itemList[3],
                ),
                SizedBox(width: 8),
                Expanded(
                  child: itemList[4],
                ),
                SizedBox(width: 8),
                Expanded(
                  child: itemList[5],
                ),
                SizedBox(width: 8),
                Expanded(
                  child: itemList[12],
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: itemList[0],
                ),
                SizedBox(width: 8),
                Expanded(
                  child: itemList[1],
                ),
                SizedBox(width: 8),
                Expanded(
                  child: itemList[2],
                ),
                SizedBox(width: 8),
                Expanded(
                  child: itemList[11],
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {});
                      _value = _value + "0";
                    },
                    child: Container(
                      height: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      child: Text(
                        '0',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: itemList[10],
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {});
                      //_value = _value + "0";
                    },
                    child: Container(
                      height: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 137, 127, 242),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      child: Text(
                        equalSign,
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
