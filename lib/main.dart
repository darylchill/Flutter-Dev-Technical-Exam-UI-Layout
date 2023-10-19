import 'package:flutter/material.dart';
import 'model/remind.dart';
import 'widget/balance.dart';
import 'widget/due_date_row.dart';
import 'widget/reminderlist.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dev Technical Exam 1: UI Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //fake list
  var listReminder = [
    ReminderModel(remind: true, name: "Juan Dela Cruz", balance: "10.00"),
    ReminderModel(remind: true, name: "Mel Francis", balance: "76.00"),
    ReminderModel(remind: false, name: "Pedro Penduko", balance: "0.00"),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            visualDensity: const VisualDensity(horizontal: -4.0, vertical: -4.0),
            color: Colors.pinkAccent,
            icon: const Icon(Icons.sort_by_alpha_outlined),
            tooltip: 'Sort',
            onPressed: () {
            },
          ),
          IconButton(
            visualDensity: const VisualDensity(horizontal: -4.0, vertical: -4.0),
            color: Colors.pinkAccent,
            icon: const Icon(Icons.search_outlined),
            tooltip: 'Search',
            onPressed: () {},
          ),
          IconButton(
            visualDensity: const VisualDensity(horizontal: -4.0, vertical: -4.0),
            color: Colors.pinkAccent,
            icon: const Icon(Icons.mail_outline),
            tooltip: 'Mail',
            onPressed: () {},
          ),
          IconButton(
            visualDensity: const VisualDensity(horizontal: -4.0, vertical: -4.0),
            color: Colors.pinkAccent,
            icon: const Icon(Icons.settings),
            tooltip: 'Settings',
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.white,
        title: const Text("CREDIT LEDGER",style: TextStyle(fontSize: 18),),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
         children: [
           const TotalBalanceWidget(totalBalance: "86.00", entries: "3"),
           const DueDateWidget(),
           ReminderBalanceWidget(remindModel: listReminder)
         ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed:(){},
        backgroundColor: Colors.pinkAccent,
        tooltip: 'Increment',
        label: const Text("ADD CUSTOMER",style: TextStyle(color: Colors.white),),
        icon:  const Icon(Icons.person,color: Colors.white ,),

      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
