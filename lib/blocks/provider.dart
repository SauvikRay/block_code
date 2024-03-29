import '../blocks/block.dart';

import 'package:flutter/material.dart';

class Provider extends InheritedWidget {

    final bloc = Bloc();

   Provider({Key? key, required Widget child})
      : super(key: key, child: child);
    
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static Bloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<Provider>() as Provider)
        .bloc;
  }
}
