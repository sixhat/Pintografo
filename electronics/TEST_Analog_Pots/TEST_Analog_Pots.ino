
void setup() {
  Serial.begin(9600);
}

void loop() {
  Serial.print(analogRead(A0));
  Serial.print("\t");
  Serial.println(analogRead(A1));
  delay(1);
}
