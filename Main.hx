class Main {

  static function adder() {
    return function(a:Int, b:Int) return a + b;
  }

  static function printer(f: (Int -> Int -> Int)) {
    trace(f(1,2));
  } 

  static function main():Void {
    var n = adder();
    printer(n);
  } 



}
