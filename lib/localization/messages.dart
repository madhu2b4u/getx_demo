import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:getx_demo/localization/fr.dart';
import 'package:getx_demo/localization/en.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': En().messages,
    'fr_FR': Fr().messages,
  };
}