import 'package:flutter_riverpod/flutter_riverpod.dart';

// final totalAmoutn = StateNotifierProvider<TotalAmoutnNotifier, double>((ref) {
//   return TotalAmoutnNotifier();
// });

// class TotalAmoutnNotifier extends StateNotifier<double> {
//   TotalAmoutnNotifier() : super(0.0);

//   setValue(amount) {
//     state = amount;
//   }
// }

final totalAmoutn = StateProvider<int>((ref) {
  return 0;
});


final quantity = StateProvider.family.autoDispose<int,int>((ref,value) {
  return 1;
});