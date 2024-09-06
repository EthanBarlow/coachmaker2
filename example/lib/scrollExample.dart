import 'package:coachmaker/coachmaker.dart';
import 'package:flutter/material.dart';

class ScrollExample extends StatefulWidget {
  ScrollExample({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ScrollExampleState createState() => _ScrollExampleState();
}

class _ScrollExampleState extends State<ScrollExample> {
  final ScrollController _scrollController = ScrollController();

  List numberList = [];
  @override
  void initState() {
    numberList.addAll(List.generate(100, (index) => '$index'));
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: 100,
          controller: _scrollController,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return CoachPoint(
              initial: numberList[index],
              child: ListTile(
                title: Text('$index'),
              ),
            );
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CoachPoint(
        initial: 'floatBtn',
        child: FloatingActionButton(
          onPressed: () {
            CoachMaker(context,
                    initialList: [
                      CoachModel(
                        initial: '1',
                        title: 'Number 1',
                        maxWidth: 400,
                        subtitle: [
                          'Number 1\nRandom text\nOther, more random text\nlast line of text',
                        ],
                        header: Image.asset(
                          'images/logo.png',
                          height: 50,
                          width: 50,
                        ),
                        scrollOptions: ScrollOptions(
                            scrollController: _scrollController,
                            scrollToIndex: 50),
                      ),
                      CoachModel(
                          initial: '50',
                          title: 'Halfway through, number 50',
                          maxWidth: 400,
                          subtitle: [
                            '1',
                            '2',
                            '3',
                            '4',
                            '5',
                          ],
                          scrollOptions: ScrollOptions(
                            scrollController: _scrollController,
                            scrollToIndex: 60,
                          ),
                          header: Image.asset(
                            'images/logo.png',
                            height: 50,
                            width: 50,
                          )),
                      CoachModel(
                          initial: '60',
                          title: 'Number 60',
                          maxWidth: 400,
                          subtitle: [
                            '60th list tile',
                          ],
                          scrollOptions: ScrollOptions(
                              scrollController: _scrollController,
                              isLast: true),
                          header: Image.asset(
                            'images/logo.png',
                            height: 50,
                            width: 50,
                          )),
                      CoachModel(
                          initial: 'floatBtn',
                          title: 'Floating Action Button',
                          maxWidth: 400,
                          subtitle: [
                            'Initiating button',
                          ],
                          header: Image.asset(
                            'images/logo.png',
                            height: 50,
                            width: 50,
                          )),
                    ],
                    skip: () {},
                    duration: Duration(milliseconds: 600),
                    nextStep: CoachMakerControl.next,
                    buttonOptions: CoachButtonOptions(
                        skipTitle: 'Skip',
                        buttonTitle: 'Next',
                        buttonStyle: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green),
                            elevation: MaterialStateProperty.all(0))))
                .show();
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
