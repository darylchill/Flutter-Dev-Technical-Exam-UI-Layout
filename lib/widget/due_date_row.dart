import 'package:flutter/material.dart';

class DueDateWidget extends StatelessWidget {
  const DueDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       Padding(padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 5),
       child: Row(
         children: [
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
             child: Container(
               width: MediaQuery.of(context).size.width * 0.17,
               height: MediaQuery.of(context).size.height * 0.040,
               decoration: BoxDecoration(

                 borderRadius: BorderRadius.circular(10),
                 color: Colors.blueAccent
               ),
               child: const Center(
                 child: Text("ALL",style: TextStyle(fontSize: 11,color: Colors.white),),
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
             child: Container(
               width: MediaQuery.of(context).size.width * 0.17,
               height: MediaQuery.of(context).size.height * 0.040,
               decoration: BoxDecoration(
                 border: Border.all(),
                 borderRadius: BorderRadius.circular(10),
               ),
               child: const Center(
                 child: Text("UNPAID",style: TextStyle(fontSize: 11),),
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
             child: Container(
               width: MediaQuery.of(context).size.width * 0.17,
               height: MediaQuery.of(context).size.height * 0.040,
               decoration: BoxDecoration(
                 border: Border.all(),
                 borderRadius: BorderRadius.circular(10),
               ),
               child: const Center(
                 child: Text("PAID",style: TextStyle(fontSize: 11),),
               ),
             ),
           ),
         ],
       ),),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.35,
            height: MediaQuery.of(context).size.height * 0.045,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey
            ),
            child: const Padding(padding: EdgeInsets.symmetric(horizontal: 5,vertical: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Due Date",style: TextStyle(fontSize: 13)),
                Icon(Icons.calendar_today_outlined,size: 20,),
              ],
            ),)
          ),
        ),
      ],
    );
  }
}
