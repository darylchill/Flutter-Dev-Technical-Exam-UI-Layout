import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ReminderWidget extends StatelessWidget {
  final bool remind;
  final String name;
  final String balance;

  const ReminderWidget({
    required this.remind,
    required this.name,
    required this.balance,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.06,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.22,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(5),
                    color: remind  ? Colors.pinkAccent :  Colors.grey
                ),
                child:  const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("REMIND",style: TextStyle(fontSize: 8,color: Colors.white)),
                    Icon(CupertinoIcons.bell_circle_fill,size: 15,color: Colors.white,),
                  ],
                ),
              ),
            ),
             Expanded(
              flex: 2,
              child:Padding(
                padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 5),
                child: Text(name),
              ), ),

            Expanded(
              flex: 1,
              child:  Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                child: Text('₱$balance'),
              ),),
            const Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Icon(Icons.arrow_forward_ios,size: 12,color: Colors.pinkAccent,),)
            )),
          ],
        ),
      ),
    );
  }
}
