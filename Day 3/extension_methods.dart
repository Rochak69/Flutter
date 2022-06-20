extension on DateTime {
  String get humanize {
    return "${this.day}/${this.month}/${this.year}";
  }
}

void main() {
  final dateTime = DateTime.now();
  print(dateTime.humanize);
  print(('42'.parseInt()).runtimeType);
  String a = "Codeware Labs";
  print(a.reverse());
}

extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }

  String reverse() {
    return String.fromCharCodes(this.codeUnits.reversed);
  }
}
