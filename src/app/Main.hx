package app;

class Main {

  static function printer(text: String, f: (Int -> Int -> Int), a:Int, b:Int) {
    trace(text + " " + f(a,b));
  } 

  static function main():Void {
    printer("addition", function(a:Int, b:Int) return a + b, 5, 6);
    printer("multiply", function(a:Int, b:Int) return a * b, 5, 6);
    
    FuncMatching.down(5);
  } 

}

class FuncMatching {
  
  public static function down(i) {
    switch (i) {
        case 0: trace("Done");
        case n: trace(n); down(n-1);
    }
  }
  
}
