package app;




class Main {

  static function printer(text: String, f: (Int -> Int -> Int), a:Int, b:Int) {
    trace(text + " " + f(a,b));
  } 

  static function main():Void {
    printer("addition", function(a:Int, b:Int) return a + b, 5, 6);
    printer("multiply", function(a:Int, b:Int) return a * b, 5, 6);
    
    countdown(Value(5));
  } 
  
  static function countdown(a: Countdown) {
    switch (a) {
        case Value(0): trace("Done");
        case Value(n): trace(n); countdown(Value(n-1));
    }
  }

}

enum Countdown {
  Value(i:Int);
}