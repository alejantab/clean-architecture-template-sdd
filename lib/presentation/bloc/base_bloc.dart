import 'dart:async';

import 'package:rxdart/rxdart.dart';

/// Base class for all BLoCs. Ensures proper disposal of subscriptions.
abstract class BaseBloc {
  final CompositeSubscription _subscriptions = CompositeSubscription();

  /// Add a subscription so it is automatically disposed.
  void addToSubscriptions(StreamSubscription<dynamic> subscription) {
    subscription.addTo(_subscriptions);
  }

  /// Disposes all subscriptions. Override to close Subjects; call super.dispose().
  void dispose() {
    _subscriptions.dispose();
  }
}
