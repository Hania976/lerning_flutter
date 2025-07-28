

class Comminication{
  final String name ;

  Comminication({required this.name});
   void printHi(int t){
  for(int i=0;i<t ;i++){
    print("$i hello $name");
  }
}
 void printHello({int ? t}){
  for(int i=0;i<t ! ;i++){
    print("$i hello $name");
  }
}
}