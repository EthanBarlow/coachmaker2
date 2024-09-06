import 'package:coachmaker/coachmaker.dart';
import 'package:flutter/material.dart';

class HorizontalExample extends StatefulWidget {
  HorizontalExample({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HorizontalExampleState createState() => _HorizontalExampleState();
}

class _HorizontalExampleState extends State<HorizontalExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CoachPoint(initial: 'appBar', child: Text('Horizontal Example')),
        actions: [
          CoachPoint(
              initial: 'iconBtn2',
              child: IconButton(onPressed: () {}, icon: Icon(Icons.menu)))
        ],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CoachPoint(
              initial: '1',
              child: Container(
                color: Colors.red,
                height: 200,
                width: 100,
                child: Center(
                  child: Text(
                    'Left side box',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            CoachPoint(
              initial: '2',
              child: Container(
                color: Colors.red,
                height: 200,
                width: 100,
                child: Center(
                  child: Text(
                    'Middle box',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            CoachPoint(
              initial: '3',
              child: Container(
                color: Colors.red,
                height: 200,
                width: 100,
                child: Center(
                  child: Text(
                    'Right side box text',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CoachPoint(
            initial: 'floatBtn1',
            child: FloatingActionButton(
              onPressed: () {},
              heroTag: 'floatBtn1-heroTag',
            ),
          ),
          CoachPoint(
            initial: 'floatBtn2',
            child: FloatingActionButton(
              onPressed: () {},
              heroTag: 'floatBtn2-heroTag',
            ),
          ),
          CoachPoint(
            initial: 'floatBtn3',
            child: FloatingActionButton(
              onPressed: () {
                CoachMaker(
                  context,
                  initialList: [
                    CoachModel(
                      initial: '1',
                      title: 'First title',
                      maxWidth: 400,
                      subtitle: [
                        'Left side box subtitle',
                      ],
                      header: Image.asset(
                        'images/logo.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    CoachModel(
                      initial: '2',
                      title: 'Middle Box',
                      maxWidth: 400,
                      subtitle: ['Middle box subtitle text', 'Subtitle page 2'],
                    ),
                    CoachModel(
                      initial: '3',
                      title: 'Right Side Title',
                      maxWidth: 400,
                      subtitle: [
                        'Gibberish, gibberish, etc, etc, ...',
                      ],
                      header: Image.asset(
                        'images/logo.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    CoachModel(
                      initial: 'appBar',
                      title: 'AppBar Scaffold Title',
                      maxWidth: 400,
                      subtitle: [
                        'subtitle here',
                      ],
                      header: Image.asset(
                        'images/logo.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    CoachModel(
                      initial: 'iconBtn2',
                      title: 'Menu Icon Button',
                      maxWidth: 400,
                      subtitle: [
                        'subtitle',
                      ],
                      header: Image.asset(
                        'images/logo.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    CoachModel(
                        initial: 'floatBtn1',
                        title: 'Left Floating Action Button',
                        maxWidth: 400,
                        subtitle: [
                          'No icon in this floating action button',
                          'empty button'
                        ],
                        header: Image.asset(
                          'images/logo.png',
                          height: 50,
                          width: 50,
                        )),
                    CoachModel(
                        initial: 'floatBtn2',
                        title: 'Middle Floating Action Button',
                        maxWidth: 400,
                        subtitle: [
                          'No icon in this floating action button',
                          'empty button',
                          '-------- empty --------'
                        ],
                        header: Image.asset(
                          'images/logo.png',
                          height: 50,
                          width: 50,
                        )),
                    CoachModel(
                        initial: 'floatBtn3',
                        title: 'Plus Button',
                        maxWidth: 400,
                        subtitle: ['Initiator'],
                        header: Image.asset(
                          'images/logo.png',
                          height: 50,
                          width: 50,
                        )),
                  ],
                  skip: () {},
                  nextStep: CoachMakerControl.next,
                  buttonOptions: CoachButtonOptions(
                    skipTitle: 'Skip',
                    buttonTitle: 'Next',
                    buttonStyle: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                        elevation: MaterialStateProperty.all(0)),
                  ),
                ).show();
              },
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
