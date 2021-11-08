import 'package:dotup_flutter_wear/dotup_flutter_wear.dart';
import 'package:dotup_flutter_widgets/dotup_flutter_widgets.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: Scaffold(
        body: WatchShape(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Center(
              child: ListView(
                children: [
                  Column(
                    children: [
                      SizedBox(height: 16),
                      DotupLogo(size: 200),
                      SizedBox(height: 16),
                      Text('www.dotup.de'),
                      AmbientMode(
                        builder: (context, mode, child) {
                          return Text(
                            'Ambient Mode: ${mode == WearMode.active ? 'Active' : 'Ambient'}',
                          );
                        },
                      ),
                      SizedBox(height: 32),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
