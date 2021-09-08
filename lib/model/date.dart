DateTime now = DateTime.now();

Map dayName = {
  1: 'Monday',
  2: 'Tuesday',
  3: 'Wednesday',
  4: 'Thursday',
  5: 'Friday',
  6: 'Saturday',
  7: 'Sunday',
};

Map monthName = {
  1: 'Jan',
  2: 'Feb',
  3: 'Mar',
  4: 'Apr',
  5: 'May',
  6: 'Jun',
  7: 'Jul',
  8: 'Aug',
  9: 'Sep',
  10: 'Oct',
  11: 'Nov',
  12: 'Dec',
};

class Date {
  String getDayName() {
    String thisDay = dayName[now.weekday];
    return thisDay;
  }

  String getTime() {
    String thisTime = '${now.hour}.${now.minute}';
    return thisTime;
  }

  String getMonth() {
    String thisMonth = '${monthName[now.month]} ${now.day}';
    return thisMonth;
  }
}
