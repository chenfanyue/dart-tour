class Point {
  double x;
  double y;

  // 构造函数，从 Map<String, double> 类型的 json 中读取 'x' 和 'y' 的值。
  Point.fromJson(Map<String, double> json)
      : x = json['x']!,
        y = json['y']! {
    print('In Point.fromJson(): ($x, $y)');
  }
}

void main() {
  final data = {'x': 3.0, 'y': 4.0};

  final point = Point.fromJson(data);

  print('Point coordinates: (${point.x}, ${point.y})');
}

class Point {
  late double x;
  late double y;

  Point.fromJson(Map<String, double> json) {
    x = json['x']!;
    y = json['y']!;
  }
}


// practice
class FirstTwoLetters {
  final String letterOne;
  final String letterTwo;

  FirstTwoLetters(String word)
      : assert(word.runes.length >= 2),
        letterOne = word.substring(0, 1),
        letterTwo = word.substring(1, 2) {
    word.runes.forEach(print);
  }
}

// Tests your solution (Don't edit!):
void main() {
  final errs = <String>[];

  try {
    final result = FirstTwoLetters('My String');

    if (result.letterOne != 'M') {
      errs.add(
          'Called FirstTwoLetters(\'My String\') and got an object with \n letterOne equal to \'${result.letterOne}\' instead of the expected value (\'M\').');
    }

    if (result.letterTwo != 'y') {
      errs.add(
          'Called FirstTwoLetters(\'My String\') and got an object with \n letterTwo equal to \'${result.letterTwo}\' instead of the expected value (\'y\').');
    }
  } catch (e) {
    errs.add(
        'Called FirstTwoLetters(\'My String\') and got an exception \n of type ${e.runtimeType}.');
  }

  bool caughtException = false;

  try {
    FirstTwoLetters('');
  } catch (e) {
    caughtException = true;
  }

  if (!caughtException) {
    errs.add(
        'Called FirstTwoLetters(\'\') and didn\'t get an exception \n from the failed assertion.');
  }

  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}
