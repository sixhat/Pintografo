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

    int aa0 = analogRead(A0) - 511;
    int aa1 = analogRead(A1) - 511;

    stepperX.steptime = int(map(abs(aa0), 0, 512, 4000, 1000));
    stepperY.steptime = int(map(abs(aa1), 0, 512, 4000, 1000));

    int dir0 = aa0 > 0 ? 1 : -1;
    int dir1 = aa1 > 0 ? 1 : -1;

    stepperX.move(dir0 * 1);
    stepperY.move(dir1 * 1);

  } else {
    delay(100);
  }
}
