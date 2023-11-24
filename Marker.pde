class Marker {
  
  PVector[] targetPoints;
  PVector position;
  PVector prevPosition;
  
  public Marker(PVector position, PVector[] targetPoints) {
    this.position = position;
    this.targetPoints = targetPoints;
  }
  
  public void nextPosition() {
    
    prevPosition = position.copy(); // Use copy to avoid referencing the same object
    int index = (int) random(targetPoints.length); // Corrected array length and cast to int
    PVector direction = PVector.sub(targetPoints[index], position); // Subtract two PVectors
    direction.mult(2.0 / 3); // Scale the vector
    position.add(direction); // Add the scaled vector to the position
    
  }
  
  public void displayMarker() {
   stroke(255);
   point(position.x, position.y);
  }
  
}
