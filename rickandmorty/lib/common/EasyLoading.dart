
import 'package:flutter_easyloading/flutter_easyloading.dart';

EasyLoading easyLoading() {
  dynamic easyLoading = EasyLoading.show(
    status: 'Loading',
    maskType: EasyLoadingMaskType.black,
  );

  return easyLoading;
}