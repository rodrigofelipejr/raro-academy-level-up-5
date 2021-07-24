import 'package:intl/intl.dart';

class Formatters {
  static String formatCurrency(dynamic value) {
    return NumberFormat("#,##0.00", "pt_BR").format(value).toString();
  }
}