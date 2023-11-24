# Dynamic Marker Visualization - Sierpinski Carpet Fractal

This Processing project visualizes a dynamic marker moving towards a set of target points on a canvas, creating a pattern resembling the Sierpinski carpet fractal. The project consists of two main components: the `MainSketch`, which sets up and runs the visualization, and the `Marker` class, which defines the behavior and appearance of the marker.

## Files

- `MainSketch.pde`: The main sketch file for the Processing application.
- `Marker.pde`: The class file defining the `Marker` object.

## `MainSketch.pde`

The main sketch sets up a canvas and creates a `Marker` object. The marker moves towards randomly selected target points every frame, creating a visual effect that mimics the Sierpinski carpet fractal.

### Key Variables

- `scaleX` and `scaleY`: Define the size of the canvas.
- `calculationsPerFrame`: Determines how many times the marker's position is updated per frame.
- `spot`: The `Marker` object.

### Functions

- `setup()`: Initializes the canvas and the `Marker` object.
- `draw()`: Continuously updates and displays the marker's position.

## `Marker.pde`

Defines the `Marker` class, responsible for the behavior and display of the marker.

### Properties

- `targetPoints`: An array of `PVector` points towards which the marker moves.
- `position`: The current position of the marker.
- `prevPosition`: The previous position of the marker.

### Constructor

- `Marker(PVector position, PVector[] targetPoints)`: Initializes a new marker with a starting position and a set of target points.

### Methods

- `nextPosition()`: Updates the marker's position, moving it towards a randomly selected target point.
- `displayMarker()`: Renders the marker on the canvas.

## Sierpinski Carpet Fractal

The motion of the marker creates a pattern that resembles the Sierpinski carpet fractal. This fractal is a complex pattern of squares within squares, known for its self-similarity and geometric beauty. The random yet deterministic nature of the marker's movement results in a fascinating approximation of this fractal pattern.

## Setup and Running

To run this project:

1. Ensure you have Processing installed on your computer.
2. Open `MainSketch.pde` in the Processing IDE.
3. Run the sketch to see the fractal visualization.

## Notes

- The marker's movement and appearance can be customized by modifying the `Marker` class.
- Experiment with different values for `calculationsPerFrame` to change the speed of the visualization and the intricacy of the fractal pattern.

---

This project is a creative demonstration of motion towards target points using vectors in Processing, leading to the emergent creation of a fractal pattern akin to the Sierpinski carpet. Feel free to explore and modify it to discover other fascinating visual effects!
