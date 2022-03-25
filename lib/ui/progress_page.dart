import 'package:flutter/material.dart';

import 'home_page.dart';

class ProgressPage extends StatefulWidget {
  const ProgressPage({Key? key, required this.tName, required this.sName}) : super(key: key);

  final String tName;
  final String sName;

  @override
  ProgressPageState createState() => ProgressPageState();
}

class ProgressPageState extends State<ProgressPage> {
  _steps() => [
    Step(
      isActive: _currentStep == 0,
      state: _stepState(0),
      title: const Text('Registration'),
      content: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
    ),
    Step(
      isActive: _currentStep == 1,
      state: _stepState(1),
      title: const Text('Work Progress'),
      content: const Text('Duis id bibendum nunc. Proin eu varius urna, cursus ultrices ex.'),
    ),
    Step(
      isActive: _currentStep == 2,
      state: _stepState(2),
      title: const Text('Transaction'),
      content: const Text('Aenean quis placerat nisl. Etiam justo quam, volutpat id faucibus at, sagittis et metus.'),
    ),
    Step(
      isActive: _currentStep == 3,
      state: _stepState(3),
      title: const Text('Finalization'),
      content: const Text('Maecenas eget hendrerit lectus, nec dignissim sem.'),
    )
  ];
  int _currentStep = 0;

  StepState _stepState(int step) {
    if (_currentStep > step) {
      return StepState.complete;
    } else {
      return StepState.indexed;
    }
  }

  Widget _createFinishWork(){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      width: 250,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 2,
            primary: const Color(0xFF014466),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding: const EdgeInsets.all(12.0)
        ),
        child: const Text("Work Finished",
          style: TextStyle(
            color: Color(0xffffffff),
            fontSize: 18,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () async {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Booking Finished", textAlign: TextAlign.center,style: TextStyle(color: Color(0xfffe8161)),),
                content: SizedBox(
                  height: 135,
                  child: Column(
                    children: <Widget>[
                      Flexible(
                        child: Text(widget.tName+" has finished their "+widget.sName+" work in your area.",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const Flexible(
                        child: Text("Please make sure to give the calculated payment to the worker. Thank You for hiring.",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      ),
                      child: const Text("Done", style: TextStyle(color: Color(0xFF014466), fontSize: 18),))
                ],
              )
          );
          debugPrint("Done Button Tapped");
        },
      ),
    );
  }
  Widget _createCancelWork(){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      width: 250,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 2,
            primary: Colors.black12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding: const EdgeInsets.all(12.0)
        ),
        child: const Text("Cancel Work",
          style: TextStyle(
            color: Color(0xffffffff),
            fontSize: 18,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () async {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Work Cancelled", textAlign: TextAlign.center,style: TextStyle(color: Color(0xfffe8161)),),
                content: SizedBox(
                  height: 180,
                  child: Column(
                    children: <Widget>[
                      Flexible(
                        child: Text("You have cancelled "+widget.tName+"'s "+widget.sName+" work in your Area.",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const Flexible(
                        child: Text("If there has been work done already, please make sure to give the calculated payment to the worker. Otherwise, thank you for hiring.",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      ),
                      child: const Text("Done", style: TextStyle(color: Color(0xFF014466), fontSize: 18),))
                ],
              )
          );
          debugPrint("Done Button Tapped");
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.tName+"'s Progress"),
        backgroundColor: const Color(0xfffe8161),
      ),
      body: Stack(children: <Widget>[
        SizedBox(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Theme(
                  data: ThemeData(
                    colorScheme: const ColorScheme.light(
                        primary: Color(0xFF014466)
                    ),
                    primaryColor: const Color(0xFF014466),
                  ),
                  child: Stepper(
                    controlsBuilder: (BuildContext context, ControlsDetails controls) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Row(
                          children: <Widget>[
                            if (_currentStep < 3)
                              ElevatedButton(
                                onPressed: controls.onStepContinue,
                                child: const Text('NEXT'),
                              ),
                            if (_currentStep < 3)
                              TextButton(
                                onPressed: controls.onStepCancel,
                                child: const Text(
                                  'BACK',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                          ],
                        ),
                      );
                    },
                    onStepTapped: (step) => setState(() => _currentStep = step),
                    onStepContinue: () {
                      setState(() {
                        if (_currentStep < _steps().length - 1) {
                          _currentStep += 1;
                        } else {
                          _currentStep = 0;
                        }
                      });
                    },
                    onStepCancel: () {
                      setState(() {
                        if (_currentStep > 0) {
                          _currentStep -= 1;
                        } else {
                          _currentStep = 0;
                        }
                      });
                    },
                    currentStep: _currentStep,
                    steps: _steps(),
                  ),
                ),
                const SizedBox(height: 10),
                _createFinishWork(),
                _createCancelWork()
              ],
            ),
          ),
        ),
        ],
      ),
    );
  }
}