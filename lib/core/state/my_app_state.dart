import 'dart:developer';

import 'package:flutter/widgets.dart';

import '../../analytics_observer.dart';

abstract class MyAppState<T extends StatefulWidget> extends State<T>
    with RouteAware {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    AnalyticsObserver.instance.routeObserver
        .subscribe(this, ModalRoute.of(context)! as PageRoute);
  }

  @mustCallSuper
  @override
  void dispose() {
    AnalyticsObserver.instance.routeObserver.unsubscribe(this);
    log("disposing");
    super.dispose();
  }
}
