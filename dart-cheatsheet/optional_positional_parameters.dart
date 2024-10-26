int sumUpToFive(int a, [int? b, int? c, int? d, int? e]) {
  int sum = a;
  if (b != null) sum += b;
  if (c != null) sum += c;
  if (d != null) sum += d;
  if (e != null) sum += e;
  return sum;
}

void main() {
  int total = sumUpToFive(1, 2);
  int otherTotal = sumUpToFive(1, 2, 3, 4, 5);
  print('$total, $otherTotal');
}


int sumUpToFive(int a, [int b = 2, int c = 3, int d = 4, int e = 5]) {
  // ···
}

void main() {
  int newTotal = sumUpToFive(1);
  print(newTotal); // <-- prints 15
}



// practise
String joinWithCommas(int a, [int? b, int? c, int? d, int? e]) {
  final args =
      List<int>.from([a, b, c, d, e].where((x) => x != null), growable: false);
  return args.join(',');
}

String joinWithCommas(int a, [int? b, int? c, int? d, int? e]) {
  final buffer = StringBuffer(a);
  if (b != null) {
    buffer.write(',');
    buffer.write(b);
  }
  if (c != null) {
    buffer.write(',');
    buffer.write(c);
  }
  if (d != null) {
    buffer.write(',');
    buffer.write(d);
  }
  if (e != null) {
    buffer.write(',');
    buffer.write(e);
  }
  return buffer.toString();
}


// Tests your solution (Don't edit!):
void main() {
  final errs = <String>[];

  try {
    final value = joinWithCommas(1);

    if (value != '1') {
      errs.add(
          'Tried calling joinWithCommas(1) \n and got $value instead of the expected (\'1\').');
    }
  } on UnimplementedError {
    print(
        'Tried to call joinWithCommas but failed. \n Did you implement the method?');
    return;
  } catch (e) {
    print(
        'Tried calling joinWithCommas(1), \n but encountered an exception: ${e.runtimeType}.');
    return;
  }

  try {
    final value = joinWithCommas(1, 2, 3);

    if (value != '1,2,3') {
      errs.add(
          'Tried calling joinWithCommas(1, 2, 3) \n and got $value instead of the expected (\'1,2,3\').');
    }
  } on UnimplementedError {
    print(
        'Tried to call joinWithCommas but failed. \n Did you implement the method?');
    return;
  } catch (e) {
    print(
        'Tried calling joinWithCommas(1, 2 ,3), \n but encountered an exception: ${e.runtimeType}.');
    return;
  }

  try {
    final value = joinWithCommas(1, 2, 3, 4, 5);

    if (value != '1,2,3,4,5') {
      errs.add(
          'Tried calling joinWithCommas(1, 2, 3, 4, 5) \n and got $value instead of the expected (\'1,2,3,4,5\').');
    }
  } on UnimplementedError {
    print(
        'Tried to call joinWithCommas but failed. \n Did you implement the method?');
    return;
  } catch (e) {
    print(
        'Tried calling stringify(1, 2, 3, 4 ,5), \n but encountered an exception: ${e.runtimeType}.');
    return;
  }

  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}
