final int scaleX = 1000;
final int scaleY = 1000;
int calculationsPerFrame = 1000;
Marker spot;

void setup() {
  size(1000, 1000);
  background(0);
  PVector startPoint = new PVector(scaleX - 1, scaleY - 1);
  PVector[] targetPoints = {
                            new PVector(0, 0),   
                            new PVector(0, scaleY),
                            new PVector(scaleX, 0),
                            new PVector(scaleX, scaleY),
                            new PVector(0, scaleY / 2),
                            new PVector(scaleX / 2, 0),
                            new PVector(scaleX, scaleY / 2),
                            new PVector(scaleX / 2, scaleY)
                          };
  
  spot = new Marker(startPoint, targetPoints);
  
}

void draw() {
  int counter = 0;
  while (counter++ < calculationsPerFrame) {
    spot.nextPosition();
    spot.displayMarker();
  }
}
