import 'package:flutter_riverpod/flutter_riverpod.dart';

final totalAmoutn = StateNotifierProvider<TotalAmoutnNotifier, double>((ref) {
  return TotalAmoutnNotifier();
});

class TotalAmoutnNotifier extends StateNotifier<double> {
  TotalAmoutnNotifier() : super(480.0);

  setValue(amount) {
    state = amount;
  }
}

