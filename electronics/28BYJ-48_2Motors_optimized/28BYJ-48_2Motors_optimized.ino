byte pes[8] = {
  0b1000,
  0b1100,
  0b0100,
  0b0110,
  0b0010,
  0b0011,
  0b0001,
  0b1001
};

struct Motor {
  boolean active;
  unsigned long previous;
  int interval;
  int step;
  int pin;
  int dir;
  int a, b, c, d, id;
} motor0, motor1;

void activateMotor(struct Motor* motor, byte id, byte pin, byte a, byte b, byte c, byte d) {
  motor->active = 1;
  motor->interval = 800;
  motor->dir = 1;
  motor->step = 0;

  motor->previous = micros();
  motor->pin = pin;
  motor->a = a;
  motor->b = b;
  motor->c = c;
  motor->d = d;
  motor->id;

  pinMode(motor->a, OUTPUT);
  pinMode(motor->b, OUTPUT);
  pinMode(motor->c, OUTPUT);
  pinMode(motor->d, OUTPUT);
}

void runMotor(struct Motor* motor) {
  if (motor->active && micros() - motor->previous >= motor->interval) {

    int pot = analogRead(motor->pin);
    motor->interval =  word(map(abs(pot - 512), 0, 512, 3200, 800));

    if (pot > 511) {
      motor->dir = 1;
    } else {
      motor->dir = -1;
    }

    byte pos = pes[motor->step];
    writeMotor(motor->a, motor->b, motor->c, motor->d, bitRead(pos, 3), bitRead(pos, 2), bitRead(pos, 1), bitRead(pos, 0));
    motor->step = (motor->step + motor->dir + 8) % 8;
    motor->previous = micros();

  }
}

void writeMotor(int p1, int p2, int p3, int p4, int a, int b, int c, int d) {
  digitalWrite(p1, a);
  digitalWrite(p2, b);
  digitalWrite(p3, c);
  digitalWrite(p4, d);
}

void setup() {
  activateMotor(&motor0, 0,  A0, 2, 3, 4, 5);
  activateMotor(&motor1, 1 , A1, 8, 9, 10, 11);
  pinMode(7, INPUT_PULLUP);
}

void loop() {
  if(digitalRead(7)==LOW){
    runMotor(&motor0);
    runMotor(&motor1);
  }
  delayMicroseconds(1);
}
