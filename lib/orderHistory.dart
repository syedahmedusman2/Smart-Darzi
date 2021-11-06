import 'package:flutter/material.dart';

class orderHistory extends StatelessWidget {
  // const orderHistory({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Order Hstory'),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Pending',
                  icon: Icon(Icons.reorder_outlined),
                ),
                Tab(
                  text: 'Completed',
                  icon: Icon(Icons.checklist_outlined),
                ),
                Tab(
                  text: 'Cancelled',
                  icon: Icon(Icons.change_circle_outlined),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text('This is pending screen'),
              ),
              Center(
                child: Text('This is completed screen'),
              ),
              Center(
                child: Text('This is cancelled screen'),
              ),
            ],
          ),
        ),
      );
}
