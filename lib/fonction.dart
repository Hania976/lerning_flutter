

class Comminication{
  static void printHi(String name ,int t){
  for(int i=0;i<t ;i++){
    print("$i hello $name");
  }
}
static void printHello({String ? name ,int ? t}){
  for(int i=0;i<t ! ;i++){
    print("$i hello $name");
  }
}
}