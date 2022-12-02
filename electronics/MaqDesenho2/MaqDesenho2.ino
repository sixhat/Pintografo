// include the library
#include <Unistep2.h>

// Define some steppers and the pins they will use
Unistep2 stepperX(2, 3, 4, 5, 4096, 1000); // pins for IN1, IN2, IN3, IN4, steps per rev, step delay(in micros)
Unistep2 stepperY( 8, 9, 10, 11, 4096, 1000);

void setup()
{
  pinMode(7, INPUT_PULLUP);
}

void loop()
{
  if (digitalRead(7) == LOW) {
    stepperX.run();
    stepperY.run();

    stepperX.steptime = int(map(analogRead(A0), 0, 1023, 12000, 1200));
    stepperY.steptime = int(map(analogRead(A1), 0, 1023, 12000, 1200));

    stepperX.move(1);
    stepperY.move(1);

  } else {
    delay(100);
  }
}
