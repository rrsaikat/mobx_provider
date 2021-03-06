import 'package:flutter/material.dart';
import 'package:mobx_provider/mobx_provider.dart';
import 'package:mobx_provider/src/mobx_providers/mobx_stateful_provider.dart';
import 'counter_store.dart';

class CounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MobxStatefulProvider<CounterStore>(
      builder: (context, store) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: store.increment,
          ),
          appBar: AppBar(
            title: Text('mobx provider example'),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                MobxWidgetProvider<CounterStore>(builder: (context, _) {
                  return Text('counter value is ${store.counter}');
                }),
              ],
            ),
          ),
        );
      },
    );
  }
}
