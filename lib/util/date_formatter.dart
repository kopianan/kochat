import 'package:intl/intl.dart';

class DateFormatter {
  String formatIntDate(int? time) {
    if (time == null) return "";
    final date = DateTime.fromMillisecondsSinceEpoch(time);
    final now = DateTime.now();
    final differenceInDays = now.difference(date).inDays;

    if (differenceInDays == 0) {
      // Today
      return DateFormat('HH:mm').format(date);
    } else if (differenceInDays <= 7) {
      // This week (including yesterday)
      return '${differenceInDays}d';
    } else if (differenceInDays <= 30) {
      // This month
      return DateFormat('MMM d')
          .format(date); // "MMM" for short month name, "d" for day
    } else {
      // Check if it's a different year
      if (date.year != now.year) {
        return DateFormat('y').format(date); // "y" for year only
      } else {
        return DateFormat('MMM d')
            .format(date); // Fallback to month and day if same year
      }
    }
  }
}
