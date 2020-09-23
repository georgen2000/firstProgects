import 'dart:core';

class Lab1 {
  void main() {
    //operators
    var color1 = 'blue';
    var color2;
    color2 ??= color1;
    print(color2);

    color2 = color1 == 'red' ? 'blue' : 'black';
    print(color2);

    // functions
    print(makeText('friend', 'dear', c: 'my'));

    var multiply = (int value) => value * 3;
    print(multiply(3));
    var multiply2 = this.multiply2(3);
    print(multiply2(4));
    print(multiply2(2));

    // collection
    var list1 = ['string', 10.3, 0];
    var list2 = [0, ...list1];
    print(list2.length == 4 ? 'good list' : 'bad result');
    Set set = new Set.from(list2);
    print(set.length == 3 ? 'good set' : 'bad');

    var toString = [for (var elem in list1) '$elem'];
    print(toString);

    var map = new Map<int, String>();
    map[1] = 'first element';
    map[3] = 'not second element';
    print(map);
  }

  String makeText(String a, String b,
      {String d = "Hello", String c = "World"}) {
    return d + '\n' + c + '\n' + b + '\n' + a;
  }

  Function multiply2(int value1) {
    return (int value) => value * value1;
  }
}
