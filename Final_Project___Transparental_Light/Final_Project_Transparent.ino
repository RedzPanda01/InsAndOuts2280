int ledPin = 2;

void setup() {
    Serial.begin(9600);
    pinMode(ledPin,  OUTPUT);
}

void loop() {
    int val = analogRead(A0);
    int val1 = analogRead(A1);
    int val2 = analogRead(A2);
    int val3 = analogRead(A3);

    Serial.println("Analog Value: ");
    Serial.println(val);

    val = map(val, 0, 1000, 0, 255);
    val1 = map(val1, 0, 1000, 0, 255);
    val2 = map(val2, 0, 1000, 0, 255);
    val3 = map(val3, 0, 1000, 0, 255);
    
    if (val <= 200) {
        digitalWrite(ledPin, LOW);
    } else {
        digitalWrite(ledPin,  HIGH);
    }
    
    delay(250);
}