class OOP {
  main() {
    var page = Page();
    print(page.toString());
    var library = Library("book", 3);
    library.work();
    print(library.isRead);
  }
}

class Page {
  int number;
  bool isRead = false;

  Page();

  Page.read(int number) {
    this.number = number;
    isRead = true;
  }

  @override
  String toString() {
    var readString = isRead ? 'is read' : 'is not read';
    return 'Page number $number $readString';
  }
}

class Book extends Page {
  String name;

  Book(String name, int number) : super.read(number) {
    this.name = name;
  }
}

class Trait {
  work() {
    print("trait work");
  }
}

class Library extends Book with Trait {
  int count;

  Library(String name, int number) : super(name, number);
}
