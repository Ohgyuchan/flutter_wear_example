import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:wear/wear.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: WatchShape(
            child: ListView(
              children: [
                Container(
                  color: Colors.blue,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          "Play Routine",
                        ),
                      ),
                      _nowTime(),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "실시간 인기 루틴",
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {
                              print('click!');
                            },
                            child: Row(
                              children: [
                                Text(
                                  "더보기",
                                ),
                                Icon(
                                  Icons.forward,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Text(
                          "아직 생성된 루틴이 없습니다.",
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "당신을 위한 추천 루틴",
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {
                              print('click');
                            },
                            child: Row(
                              children: [
                                Text(
                                  "더보기",
                                ),
                                Icon(
                                  Icons.forward,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Text(
                          "아직 생성된 루틴이 없습니다.",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _nowTime() {
    return TimerBuilder.periodic(
      const Duration(minutes: 1),
      builder: (context) {
        return Text(
          formatDate(DateTime.now(),
              [mm, '월 ', dd, '일  ', hh, '시 ', nn, '분  ', D, '요일'],
              locale: KoreanDateLocale()),
        );
      },
    );
  }
}
