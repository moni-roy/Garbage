void setup() {
  Serial.begin(9600);
  pinMode(2,INPUT);
}
void loop() {
  float vl = digitalRead(2);
  Serial.println(vl);
  //Serial.println(12);
  delay(500);
}
