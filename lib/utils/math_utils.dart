import 'dart:math';

/// Constant factor to convert and angle from degrees to radians.
const double degrees2Radians = pi / 180.0;

/// Convert [degrees] to radians.
double radians(double degrees) => degrees * degrees2Radians;
