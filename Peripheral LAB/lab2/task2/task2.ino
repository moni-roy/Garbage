void setup() {
  Serial.begin(9600);
  pinMode(9,OUTPUT);
}
void loop() {
  int vl = analogRead(0);
  int rt = map(vl,0,1023,0,254);
  Serial.println(rt);
  analogWrite(9,rt);
  delay(100);
}
