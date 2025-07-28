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
void main(){
  printHi("hania",3);
  printHello(name:"hania",t:1);
}