import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:lc_sample_project/models/values/input_model.dart';
import 'package:lc_sample_project/widgets/pages/input_form/input_form.dart';
import 'package:lc_sample_project/widgets/pages/input_form/input_form_page_notifier.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // 初期ページはStateNotifierを使ったProviderパターンを使用しています。
      home: StateNotifierProvider<InputFormPageNotifier, InputModel>(
        create: (_) => InputFormPageNotifier(state: const InputModel()),
        child: const InputFormPage(),
      ),
    );
  }
}
