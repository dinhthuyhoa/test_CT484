import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../manage/manage.dart';

class BaseProvider {
  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (_) => AuthManage()),
  ];
}
