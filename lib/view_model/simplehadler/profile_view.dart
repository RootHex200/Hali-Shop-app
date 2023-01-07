import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monarch_mart/utils/db.dart';
import 'package:shared_preferences/shared_preferences.dart';

final profileProvider =
    StateNotifierProvider<profileNotifier, List<String>>((ref) {
  return profileNotifier();
});

class profileNotifier extends StateNotifier<List<String>> {
  profileNotifier() : super([]);

  getProfileviewData() async {
    final SharedPreferences db = await prefs;

    var name = db.getString("name");
    var email = db.getString("email");

    state = [name.toString(), email.toString()];
  }
}
