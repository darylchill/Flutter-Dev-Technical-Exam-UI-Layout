import 'package:flutter/material.dart';
import 'package:flutter_dev_technical_exam_ui_layout/model/remind.dart';

import 'reminder_widget.dart';

class ReminderBalanceWidget extends StatelessWidget {
  final List<ReminderModel> remindModel;
  const ReminderBalanceWidget({required this.remindModel,super.key});



  @override
  Widget build(BuildContext context) {
    return Expanded(child:  Padding(padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Column(
        children: [
          const Row(
            children: [
              Expanded(
                flex:2,
                child: Text("Reminder",style: TextStyle(fontSize: 10),),),
              Expanded(
                flex:2,
                child: Text("Customer Name",style: TextStyle(fontSize: 10),),),
              Expanded(
                  flex:3,
                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text("Balance",style: TextStyle(fontSize: 10),),)),
              //Text("Customer Name"),
              //Text("Balance"),
            ],
          ),
          Expanded(child: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return  ReminderWidget(
                  remind: remindModel[index].remind,
                  name: remindModel[index].name,
                  balance: remindModel[index].balance,);
              })),
        ],
      ),),);
  }
}
