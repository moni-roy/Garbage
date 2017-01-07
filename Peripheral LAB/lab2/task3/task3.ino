int tl=0;
void setup() {
  Serial.begin(9600);
  pinMode(7,OUTPUT);
  pinMode(6,OUTPUT);
  pinMode(5,OUTPUT);
  pinMode(4,OUTPUT);
  pinMode(2,INPUT);
  digitalWrite(7,LOW);
  digitalWrite(6,LOW);
  digitalWrite(5,LOW);
  digitalWrite(4,LOW);
}

void loop() {
  int vl = digitalRead(2);
  if(vl==1) tl = !tl;
  if(tl){
  for(int i=0;i<4;i++){
    for(int j=0;j<255;j++){
      digitalWrite(i+4,j);
      delay(2);
    }
    delay(500);
  }
  for(int i=3;i>=0;i--){
    for(int j=254;j>=0;j--){
      digitalWrite(i+4,j);
      delay(2);
    }
    delay(500);
  }
  }
  else {
    digitalWrite(7,LOW);
  digitalWrite(6,LOW);
  digitalWrite(5,LOW);
  digitalWrite(4,LOW);
  }
  
}
