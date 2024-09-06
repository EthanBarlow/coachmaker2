import 'package:coachmaker/coachmaker.dart';
import 'package:flutter/material.dart';

class Simple extends StatefulWidget {
  Simple({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _SimpleState createState() => _SimpleState();
}

class _SimpleState extends State<Simple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: CoachPoint(
                initial: '1',
                child: Container(
                  color: Colors.red,
                  height: 100,
                  width: 100,
                  child: Center(
                    child: Text(
                      'First Coach Point',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CoachPoint(
                  initial: '2',
                  child: Container(
                    color: Colors.red,
                    height: 50,
                    width: 100,
                    child: Center(
                      child: Text(
                        'Second Coach Point',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CoachPoint(
                    initial: '3',
                    child: Container(
                      color: Colors.red,
                      height: 50,
                      width: 100,
                      child: Center(
                        child: Text(
                          'Third Coach Point',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CoachPoint(
        initial: '4',
        child: FloatingActionButton(
          onPressed: () {
            CoachMaker(
              context,
              // firstDelay: Duration(seconds: 10),
              // duration: Duration(milliseconds: 600),
              initialList: [
                CoachModel(
                  initial: '1',
                  title: 'Title for First Point',
                  maxWidth: 400,
                  subtitle: [
                    'Subtitle for first point ',
                  ],
                  header: Image.network(
                    'https://storage.googleapis.com/cms-storage-bucket/4fd0db61df0567c0f352.png',
                    height: 50,
                    width: 50,
                  ),
                ),
                CoachModel(
                    initial: '2',
                    title: 'Title for 2nd Point',
                    maxWidth: 400,
                    alignment: Alignment.centerRight,
                    subtitle: [
                      '2nd point subtitle #1',
                      '2nd subtitle for 2nd point, 2nd subtitle for 2nd point, 2nd subtitle for 2nd point'
                    ],
                    header: Image.network(
                      'https://storage.googleapis.com/cms-storage-bucket/4fd0db61df0567c0f352.png',
                      height: 50,
                      width: 50,
                    )),
                CoachModel(
                    initial: '3',
                    title: 'Title for 3rd Point',
                    maxWidth: 400,
                    alignment: Alignment.centerRight,
                    subtitle: [
                      '3rd point subtitle',
                    ],
                    header: Image.network(
                      'https://storage.googleapis.com/cms-storage-bucket/4fd0db61df0567c0f352.png',
                      height: 50,
                      width: 50,
                    )),
                CoachModel(
                    initial: '4',
                    title: 'Title for 4th Point',
                    maxWidth: 400,
                    alignment: Alignment.center,
                    subtitle: [
                      'Subtitle for 4th point\nsub-sub-text for 4th point\n\ncaption... testing',
                    ],
                    header: Image.asset(
                      'images/logo.png',
                      height: 50,
                      width: 50,
                    )),
              ],
              nextStep: CoachMakerControl.next,
              skip: () {},
              // customNavigator: (onSkip, onNext) {
              //   return Row(
              //     children: [
              //       IconButton(
              //         onPressed: () {
              //           onSkip!();
              //         },
              //         icon: Icon(Icons.close),
              //       ),
              //       IconButton(
              //         onPressed: () {
              //           onNext();
              //         },
              //         icon: Icon(Icons.arrow_forward),
              //       )
              //     ],
              //   );
              // },
              buttonOptions: CoachButtonOptions(
                skipTitle: 'Skip',
                buttonTitle: 'Next',
                buttonStyle: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  elevation: MaterialStateProperty.all(0),
                ),
              ),
            ).show();
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
