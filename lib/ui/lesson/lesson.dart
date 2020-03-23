import 'package:first_flutter_app/models/lesson_model.dart';
import 'package:first_flutter_app/ui/lesson/lesson_details.dart';
import 'package:flutter/material.dart';

class Lesson extends StatefulWidget {
  @override
  _LessonState createState() => _LessonState();
}

class _LessonState extends State<Lesson> {
  List _list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3A4256),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: _list.length,
            itemBuilder: (BuildContext context, int index) =>
                _createCard(context, _list[index])),
      ),
    );
  }

  @override
  void initState() {
    _list = _mockDataLessons();
    super.initState();
  }

  Card _createCard(BuildContext context, LessonModel data) => Card(
        elevation: 4,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(60, 60, 60, 1)),
          child: _createItem(context, data),
        ),
      );

  _createItem(BuildContext context, LessonModel data) {
    return Container(
        color: Color(0xFF404B60),
        child: ListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => LessonDetails(data: data)));
          },
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(tag: data.icon, child: Icon(data.icon, color: Colors.white)),
            ],
          ),
          title: Hero(
            tag: data.title,
            child: Material(
              color: Colors.transparent,
              child: Text(data.title,
                  style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
          ),
          subtitle: Row(
            children: <Widget>[
              _progressIndicator(data),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text(data.level, style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          trailing: Icon(Icons.arrow_forward, color: Colors.white),
        ));
  }

  ClipRRect _progressIndicator(LessonModel lesson) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: 8,
        width: 32,
        child: LinearProgressIndicator(
          value: lesson.indicator,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
          backgroundColor: Color(0xFF575B7C),
        ),
      ),
    );
  }

  List _mockDataLessons() {
    return [
      LessonModel(
          icon: Icons.directions_car,
          title: "Introduction to Driving1",
          level: "Beginner",
          indicator: 0.3,
          price: 20,
          lessonContent:
              "We recommend that you take a series of driving lessons with an AA Driving Instructor.  Our experience shows that only taking a single lesson before a test is unlikely to provide you with the skills and confidence necessary to pass the test."),
      LessonModel(
          icon: Icons.beach_access,
          title: "Observation at Junction2",
          level: "Beginner",
          indicator: 0.4,
          price: 55,
          lessonContent:
              "We recommend that you take a series of driving lessons with an AA Driving Instructor.  Our experience shows that only taking a single lesson before a test is unlikely to provide you with the skills and confidence necessary to pass the test."),
      LessonModel(
          icon: Icons.account_balance,
          title: "Reverse Parallel Parking3",
          level: "Intermidiate",
          indicator: 0.66,
          price: 30,
          lessonContent:
              "We recommend that you take a series of driving lessons with an AA Driving Instructor.  Our experience shows that only taking a single lesson before a test is unlikely to provide you with the skills and confidence necessary to pass the test."),
      LessonModel(
          icon: Icons.speaker_notes_off,
          title: "Observation at Junction4",
          level: "Intermidiate",
          indicator: 0.75,
          price: 40,
          lessonContent:
              "We recommend that you take a series of driving lessons with an AA Driving Instructor.  Our experience shows that only taking a single lesson before a test is unlikely to provide you with the skills and confidence necessary to pass the test."),
      LessonModel(
          icon: Icons.restaurant,
          title: "Incorrect Use of Signals5",
          level: "Advanced",
          indicator: 1.0,
          price: 90,
          lessonContent:
              "We recommend that you take a series of driving lessons with an AA Driving Instructor.  Our experience shows that only taking a single lesson before a test is unlikely to provide you with the skills and confidence necessary to pass the test."),
      LessonModel(
          icon: Icons.map,
          title: "Reverse Parallel Parking6",
          level: "Advanced",
          indicator: 0.9,
          price: 60,
          lessonContent:
              "We recommend that you take a series of driving lessons with an AA Driving Instructor.  Our experience shows that only taking a single lesson before a test is unlikely to provide you with the skills and confidence necessary to pass the test."),
      LessonModel(
          icon: Icons.directions,
          title: "Reversing Around Corner7",
          level: "Advanced",
          indicator: 1.0,
          price: 80,
          lessonContent:
              "We recommend that you take a series of driving lessons with an AA Driving Instructor.  Our experience shows that only taking a single lesson before a test is unlikely to provide you with the skills and confidence necessary to pass the test."),
      LessonModel(
          icon: Icons.access_alarms,
          title: "Incorrect Use of Signals8",
          level: "Advanced",
          indicator: 1.0,
          price: 90,
          lessonContent:
              "We recommend that you take a series of driving lessons with an AA Driving Instructor.  Our experience shows that only taking a single lesson before a test is unlikely to provide you with the skills and confidence necessary to pass the test."),
    ];
  }
}
