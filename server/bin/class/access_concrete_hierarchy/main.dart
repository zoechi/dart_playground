

abstract class Base {

  Base() {
    loadDefaults();
  }

  Base.uninitialized();

  void loadDefaults() {}

  Map _values = {};

  operator [](String key) => _values[key];
}

class A extends Base {
  A() : super();

  A.uninitialized() : super.uninitialized();

  @override
  void loadDefaults() {
    _values.addAll(this._defaults);
    super.loadDefaults();
  }

  Map _defaults = {
    'a': 'aVal',
    'b': 'bVal',
    'c': 'cVal',
    'd': 'dVal'
  };
}

class B extends A {
  B() : super();

  B.uninitialized() : super.uninitialized();

  @override
  void loadDefaults() {
    _values.addAll(this._defaults);
    super.loadDefaults();
  }

  Map _defaults = {
    'g': 'gVal',
    'h': 'hVal',
    'i': 'iVal',
    'j': 'jVal'
  };
}

void main(args) {
  B settings = new B();

  print(settings['b']); // should print 'bVal' but prints 'null'
  print(settings['g']); // prints 'gVal'
}
