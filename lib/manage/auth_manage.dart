import 'package:flutter/foundation.dart';

import '../data/dummy_data.dart';
import '../models/account_model.dart';

class AuthManage with ChangeNotifier {
  List<AccountModel> accounts = [];
  Map<String, String> user = {};
  bool isInit = false;
  bool isLogin = false;

  void start() async {
    if (!isInit) {
      for (var account in DummyData.accounts) {
        accounts.add(AccountModel.fromJson(account));
      }
      isInit = true;
    }
  }

  bool signIn(String username, String password) {
    for (var account in accounts) {
      if (account.username == username && account.password == password) {
        user["Username"] = account.username ?? '';
        user["DoB"] = account.doB ?? '';
        user['Email'] = account.email ?? '';
        user["AvatarURL"] = account.avatarUrl ?? '';
        user["PublicName"] = account.publicName ?? '';
        user['PhoneNumber'] = account.phoneNumber ?? '';
        return true;
      }
    }
    return false;
  }

  void signOut() {
    user = {};
  }
}
