void printHi(String name ,int t){
  for(int i=0;i<t ;i++){
    print("$i hello $name");
  }
}
void printHello({String ? name ,int ? t}){
  for(int i=0;i<t ! ;i++){
    print("$i hello $name");
  }
}