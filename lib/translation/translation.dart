import 'package:flutter/widgets.dart';

/// Danh sách ngôn ngữ hỗ trợ rút gọn: Chỉ giữ lại Tiếng Việt và Tiếng Anh
const List<Map<String, dynamic>> appLanguages = [
  {'name': 'Tiếng Việt', 'locale': Locale('vi', 'VN')},
  {'name': 'English', 'locale': Locale('en', 'US')},
];

/// Ngôn ngữ mặc định và dự phòng
const Locale defaultAppLocale = Locale('vi', 'VN');
const Locale fallbackAppLocale = Locale('en', 'US');

