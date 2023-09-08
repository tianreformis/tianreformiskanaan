import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url1 = Uri.parse(
    'https://drive.google.com/open?id=1SxeA_EIuB3k1_ykx0J0Oy-9y1ieAndm5&usp=drive_fs');
final Uri _url2 = Uri.parse(
    'https://drive.google.com/open?id=1QKO6UCep8e34PfIGVRGsHv7zVrilkUJf&usp=drive_fs');
final Uri _url3 = Uri.parse(
    'https://drive.google.com/open?id=1PyaU7WO2ylvqjQb2YkkmUet5zxTQ-EwY&usp=drive_fs');

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Repository TIK SMA Kanaan'),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "2022-2023 SEM I",
              ),
              Tab(
                text: "2022-2023 SEM II",
              ),
              Tab(
                text: "2023-2024 SEM I",
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _lauchUrl1,
                child: Text('Kelas X'),
              ),
              ElevatedButton(
                onPressed: _lauchUrl2,
                child: Text('Kelas XI'),
              ),
              ElevatedButton(
                onPressed: _lauchUrl3,
                child: Text('Kelas XII'),
              ),
            ],
          ),
          Center(
            child: Text('Kelas XI'),
          ),
          Center(
            child: Text('Kelas XI'),
          ),
        ]),
      ),
    );
  }
}

Future<void> _lauchUrl1() async {
  if (!await launchUrl(_url1)) {
    throw Exception('Tidak Bisa dibuka $_url1');
  }
}

Future<void> _lauchUrl2() async {
  if (!await launchUrl(_url2)) {
    throw Exception('Tidak Bisa dibuka $_url2');
  }
}

Future<void> _lauchUrl3() async {
  if (!await launchUrl(_url1)) {
    throw Exception('Tidak Bisa dibuka $_url3');
  }
}
