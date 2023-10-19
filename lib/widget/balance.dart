import 'package:flutter/material.dart';

class TotalBalanceWidget extends StatelessWidget {
  final String totalBalance;
  final String entries;
  const TotalBalanceWidget({required this.totalBalance, required this.entries,super.key});

  @override
  Widget build(BuildContext context) {


    return Padding(padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
    child: Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.15,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                  , colors: [Colors.pink,Colors.purple])
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("₱$totalBalance",style: const TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                const Text("Total Balance",style: TextStyle(fontSize: 14,color: Colors.white))
              ],
            ),
          ),
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.09,
            child: Container(
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
              child:  Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child:  Row(
                  children: [
                    Column(
                      children: [
                        const Text("Customer List",style: TextStyle(fontSize: 14),),
                        Text("$entries Entries")
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Padding(padding: EdgeInsets.fromLTRB(5, 0, 20, 0),
                          child: Column(
                            children: [
                              Text("Total Payment",style: TextStyle(fontSize: 14),),
                              Text("₱0.00",style: TextStyle(color: Colors.green)),
                            ],
                          ),
                        ),

                        Padding(padding: const EdgeInsets.fromLTRB(5, 0, 20, 0),
                          child: Column(
                            children: [
                              const Text("Total Credit",style: TextStyle(fontSize: 14),),
                              Text("₱$totalBalance",style: const TextStyle(color: Colors.red))
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),),
            )

        )
      ],
    ),);
  }
}
