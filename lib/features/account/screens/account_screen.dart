import 'package:ecommerceapp/constants/global_variables.dart';
import 'package:ecommerceapp/features/account/widgets/account_tiles_listview.dart';
import 'package:ecommerceapp/features/account/widgets/below_appbar_title.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          elevation: 0,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                    text: "SHOPME",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    )),
                TextSpan(
                    text: ".in",
                    style: TextStyle(
                      fontSize: 25,
                    ))
              ])),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.notifications_outlined,
                      ),
                    ),
                    Icon(
                      Icons.search,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // PreferredSize(
      //   preferredSize: const Size.fromHeight(50),
      //   child: AppBar(
      //     flexibleSpace: Container(
      //       decoration:
      //           const BoxDecoration(gradient: GlobalVariables.appBarGradient),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [

      //           Container(
      //             padding: const EdgeInsets.only(left: 15, right: 15),
      //             child: Row(
      //               children: const [
      //                 Padding(
      //                   padding: EdgeInsets.only(right: 15),
      //                   child: Icon(Icons.notifications_none),
      //                 ),
      //                 Padding(
      //                   padding: EdgeInsets.only(right: 15),
      //                   child: Icon(Icons.search),
      //                 )
      //               ],
      //             ),
      //           )
      //         ],
      //       ),
      //     ),
      //   ),
      // ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const BelowAppBarTitle(),
          const SizedBox(
            height: 60,
          ),
          AccountTiles()
        ],
      ),
    );
  }
}
