#include <LiquidCrystal.h>
LiquidCrystal lcd(10,7,6,5,3,2);
// lcd(rs,en,d4,d5,d6,d7);

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  lcd.begin(20,4);
}

void loop() {
  
}
